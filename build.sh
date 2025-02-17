#!/usr/bin/env sh
git clone https://github.com/JankariTech/blog.git
cd blog
pnpm install
BASE_DIR="home/runner/work/blog"
DIST_BRANCH="dist"

echo "Building Started...."
pnpm build
echo "Building Completed."
echo "Deploying Started...."
mkdir -p "${BASE_DIR}""/temp"
mv docs "${BASE_DIR}""/temp"
mkdir -p "${BASE_DIR}""/temp/docs/src"
cp -r src/assets "${BASE_DIR}""/temp/docs/src/assets"
rm -rf "${BASE_DIR}""/temp/docs/src/assets/**/*.md"

git fetch origin ${DIST_BRANCH}
git checkout ${DIST_BRANCH}

rm -rf docs
mv "${BASE_DIR}"/temp/docs .

rm -rf "${BASE_DIR}""/temp"
echo "Deploying Completed"

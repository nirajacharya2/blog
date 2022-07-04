import { useThemeStore } from "@/store/theme"
import { storeToRefs } from "pinia"

export default function useTheme () {
  const store = useThemeStore()
  const { dark, font } = storeToRefs(store)
  const { toggle, setFont } = store
  return {
    dark, font, toggle, setFont
  }
}

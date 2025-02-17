---
title: Different Approaches (Protocols) to Automate the Browser
authorName: Sawjan Gurung
authorAvatar: https://avatars.githubusercontent.com/u/52366632?v=4
authorLink: https://github.com/saw-jan
createdAt: Nov 22, 2022
tags: browser automation, testing, playwright, selenium, webdriver, cypress, protocols, chrome devtools
banner: https://blog.jankaritech.com/src/assets/BrowserAutomationProtocol/images/cover.jpg
---

**TLDR**: _WebDriver_ and _Chrome DevTools Protocol_ are the two main protocols that are used to automate the browser and most of the browser automation tools are based on one of them. WebDriver BiDi is said to be the future of cross-browser automation.

> 💡 Your browser is an automation tool in itself.

Have you ever wondered how browser automation works behind the scene? I have, and I am still trying to learn more about each of the key players in the browser automation process.

In this blog post, I try to explain the different protocols we can use to automate the browser. But first, let's do a quick recall of what we know about browser automation.

**What is Browser automation?**

_Simply put, **Browser automation** is the process of automating the browser to perform repetitive and tedious tasks._

**Why Browser automation?**

- **Testing**: _Browser automation is a great way to test your web apps or websites before you deploy them to production. It can be used for various testing such as **end-to-end testing**, **performance testing**, etc._
- **Data Extraction**: _Automated web scraping is a great and efficient way to extract data from websites._

## Automating the browser

The simplest way to automate any browser is to use the available automation libraries such as selenium, playwright, cypress, and many more. However, today we are not going to learn about those automation tools. Instead, we are here to learn about the different approaches we can use to directly control the browser without the use of any automation libraries.

In order to automate the browser, there are mainly three protocols or let's say approaches in practice.

1. WebDriver (Selenium WebDriver)
2. Chrome DevTools Protocol
3. Native Scripting (Embedded JavaScript)

### WebDriver

WebDriver is a remote control interface for controlling browsers, developed by Selenium HQ and later standardized by W3C. It provides a platform and language-neutral interface and supports almost all the major browsers such as Chrome, Firefox, Safari, Edge, Opera, etc.

Communication with the browser is done through the JSON Wire protocol, a RESTful web service using JSON over HTTP. The server-side implementation of this protocol is known as the webdriver (aka browser driver); examples are chromedriver, geckodriver, etc. And the client-side implementation can be done in any preferred language and pattern. Some examples of webdriver clients are selenium, nightwatch, webdriverio, etc.

![WebDriver Protocol](/src/assets/BrowserAutomationProtocol/images/webdriver_ill.jpg)

Learn more about the protocol at [W3C WebDriver](https://w3c.github.io/webdriver/)

### Chrome DevTools Protocol

The Chrome DevTools Protocol (CDP) is a debugging protocol used by Chromium-based browsers such as Chrome, Edge, Opera, etc. Although it is not designed for testing purposes, it is a great tool for automating the browser and some automation tools such as puppeteer and playwright have proven that.

There is no middleman like webdriver server (browser driver) between the client and the browser in this approach. Instead, the browser is directly controlled by the client using CDP. The communication with the browser is done through the socket connection and hence also enables bi-directional communication.

![Chrome DevTools Protocol](/src/assets/BrowserAutomationProtocol/images/cdp_ill.jpg)

Learn more about the protocol at [CDP](https://chromedevtools.github.io/devtools-protocol/)

### Native Scripting

This approach is different from above two protocols. In the above two approaches, the automation script (client) and the browser are separated and run in different processes. In contrast, in this approach, the automation script is embedded in the browser itself and hence the browser is directly controlled by the injected script.

This comes with some trade-offs such as being unable to support multiple browser tabs and more than one browser cannot be controlled at a time. But it has its own uniqueness and strengths.

Automation tools like Cypress and TestCafe use this pattern.

![Native Scripting Approach](/src/assets/BrowserAutomationProtocol/images/native_ill.jpg)

## 🎊 Bonus Point 🎊

### WebDriver BiDi

WebDriver is a unidirectional but a standard protocol to control the army of browsers. Whereas, CDP is a bidirectional but neither a testing nor a standard protocol which means the browser choices with CDP are limited and the protocol is likely to change rapidly. This is where WebDriver BiDi comes into the picture. The main concept of WebDriver BiDi is to combine the best of both worlds. It is a new standard protocol that is based on bi-directional communication over WebSocket or Pipes.

WebDriver BiDi is basically an extension to the WebDriver protocol which is still under development at the time of writing this blog post. And it is said to be the future of cross-browser automation because most of the key players such as Google, Apple, Mozilla, Microsoft, BrowserStack, etc. are involved in the development of this protocol.

If you want to learn more about WebDriver BiDi, you can read the [WebDriver BiDi](https://w3c.github.io/webdriver-bidi/) specification.

\
I hope this blog post was helpful. Thank you for reading. 😊

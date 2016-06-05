# swiped_pages_x
Sample APP - Qt 5.7+ - Android iOS

[AUTHOR ( ekke )](AUTHOR.md)

This app is part of ekke's blog series about mobile x-platform development:
http://j.mp/qt-x

This is not a real-life app - this app only demonstrates the use of Material style and new Qt Quick Controls 2

This app is a follow-up to
* blog http://j.mp/qt-one-page-x (first app with Qt Quick Controls 2)
* blog http://bit.ly/qt-stacked-pages-x (StackView)
please read these blogs and explroe corresponding apps before going on

The topics of this third sample app:

* Navigation with SwipeView: next / previous page
* go forward and back page-by-page or jump back/force
* Navigation with Android bottom Back-key
* navigation with Android Back Button in Titlebar (ToolBar)
* Navigation with Buttons
* enable / disable Buttons, use SIGNALS / SLOTS (QML)
* Navigation with Shortcut (physical keyboard attached, per ex. BlackBerry PRIV)
* Management of SwipeView to implement business-logic - simplified with init() and cleanup() functions, also each page must be valid before going to the next page - simplified by tapping on Floating Action Button
* Dark Theme and selecting primary and accent color from options menu in ToolBar
* Popup to show info to user if first/last page reached
* Be dynamic, lazy and performant: using Loaders for Wizard - pages, only current +/- 1 page are preloaded
* Use of a QML Timer to auto-close Popup

Strings are marked as translatable, but not translated yet. See the first app to learn about i18n.

This third sample app is a simple app only to demonstrate navigation through pages via swipe gestures
 
read more about this app here:
http://bit.ly/qt-swiped-pages-x

This app needs Qt 5.7 RC or greater

## License Information
[see LICENSE ( The Unlicense )](LICENSE)

Images downloaded from https://design.google.com/icons/ - then renamed to match Qt High DPI images- and project-specific- naming

[see /images/LICENSE ( cc-by )](images/LICENSE)

## Screenshots
This sample app uses Material Design with UI Controls provided by Qt 5.7+ and was designed and tested on Android (BlackBerry PRIV Android 6.0.1) and iOS (iPhone 6s iOS 9.3).

A detailed description you'll find at my blog: http://bit.ly/qt-swiped-pages-x

### Screenshot Android
![alt tag](https://appbus.files.wordpress.com/2016/06/android_wizard_2.png  "Screenshot Android Page 2 of 5")

### Screenshot iOS
![alt tag](https://appbus.files.wordpress.com/2016/06/ios_wizard_5.png "Screenshot iOS Page 5 of 5")

more screenshots here:
http://bit.ly/qt-swiped-pages-x

# autohotkey #

[AutoHotkey](http://www.autohotkey.com/) scripts I've created for my personal use.


## Double Context Fix.ahk ##

In Windows 8.x file explorer (Windows Explorer), when you right-click the title bar and select an option (e.g. "Minimize") it will erroneously re-display the context menu for the window again AFTER you've selected the option, leaving the menu hanging there until you click something else to close it. This is a fix.

**Known Bugs:**

* Will not work unless window already has focus. e.g. If you were to right click on a Windows Explorer window immediately when the currently active window is some other application (like Chrome), it will not work.

**To Do:**

* Set it up to filter using the window class under the mouse pointer instead of the active window.

 
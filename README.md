# autohotkey #

[AutoHotkey](http://www.autohotkey.com/) scripts I've created for my personal use.


## Double Context Fix.ahk 

In Windows 8.x and Windows 10 file explorer (Windows Explorer), when you right-click the title bar and select an option (e.g. "Minimize") it will erroneously re-display the context menu for the window again AFTER you've selected the option, leaving the menu hanging there until you click something else to close it. This is a fix. 

### Installation Instructions

There are two ways to install and set this up to boot with windows. Once running, you should see the AutoHotkey icon ![AutoHotkey System Tray Icon](screenshots/autohotkey-tray.png) running in your system tray in the bottom right corner of your screen.

**Simple:**

* Download [Double context fix.exe](Double%20context%20fix.exe) to your computer.
* Double click the `Double context fix.exe` file downloaded above to run the fix.

**From Source:**

If you prefer to be safer and also have the ability to tinker with the code, you can also run from source. This only requires that you already have [AutoHotkey](http://www.autohotkey.com/) installed. 

* Download and install AutoHotkey from [http://www.autohotkey.com/](http://www.autohotkey.com/).
* Download [Double context fix.ahk](Double%20context%20fix.ahk) to your computer.
* Double click the `Double context fix.ahk` file downloaded above to run the fix. 

**Run at startup:**

To ensure this works every time you start your computer, you'll need to perform a few additional simple steps:

  * Press the Windows Key + R to open the "Run" dialog.
  * Type (or paste) the following and click OK. This should open the windows "Startup" folder: `shell:startup`
  * Right click the downloaded `.exe` or `.ahk` file and select "Copy".
  * Right click inside the "Startup" folder and select "Paste shortcut".

### Screenshots

**Before the fix:**

![Before the fix](screenshots/before-fix.gif)

**After the fix:**

![Before the fix](screenshots/after-fix.gif)

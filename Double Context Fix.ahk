; Prevents the context menu from appearing twice when right clicking the title bar of Windows Explorer in Windows 8.x.
~RButton::
if WinActive("ahk_class CabinetWClass") {

	; Check if title bar.
	CoordMode, Mouse, Window
	MouseGetPos, ClickX, ClickY, WindowUnderMouseID
	WinActivate, ahk_id %WindowUnderMouseID%
	WinGetClass, class, A
	WinGetPos, x, y, w, h, ahk_id %WindowUnderMouseID%
	
	if (ClickY < 24 and ClickY > 0 and ClickX > 0) {
		KeyWait,RButton
		WinWait,ahk_class #32768
		Send {ESC}
		;msgbox %w%
		return
	}
}

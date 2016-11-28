; Prevents the context menu from appearing twice when right clicking the title bar of Windows Explorer in Windows 8.x.
~RButton::

; Sleep 1ms, just long enough for window to gain focus after click so
; we can check to see if it's the window we're looking for. This helps
; in case the window didn't already have focus and right click happened
; to bring it into focus while also concurrently generating the errant
; pop-up menu.
sleep 1

; Now, new window will have focus BEFORE button is released...
if WinActive("ahk_class CabinetWClass") {
	; Check if clicked within range of title bar, gather stats on mouse position...
	CoordMode, Mouse, Window
	MouseGetPos, ClickX, ClickY, WindowUnderMouseID
	WinActivate, ahk_id %WindowUnderMouseID%
	WinGetClass, class, A
	WinGetPos, x, y, w, h, ahk_id %WindowUnderMouseID%
	
	if (ClickY < 30 and ClickY > 0 and ClickX > 0) {
		; Wait first for right mouse button to be released...
		KeyWait,RButton
		
		; ... then immediately send ESC to close first pop-up menu.
		Send {ESC}
		return
	}
}

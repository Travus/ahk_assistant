#NoEnv
#NoTrayIcon
#SingleInstance, Force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
DetectHiddenWindows, On
GroupAdd, nonactive, overwatch
GroupAdd, nonactive, osu!
#IfWinNotActive, ahk_group nonactive
Return

printExpansion(print)
{
	tempClipboard := ClipboardAll
	Clipboard := print
	Sleep, 200
	Send, ^v
	Sleep, 200
	Clipboard := tempClipboard
	tempClipboard := ""
	Return
}

addExp()
{
	global
	WinGetTitle, ActiveWindow, A
	Gui, AddExp:Add, Text, x10 y10, Trigger / Hotstring
	Gui, AddExp:Add, Edit, w230 h20 x10 y30 vTrigger
	Gui, AddExp:Add, Text, x10 y60, Expansion
	Gui, AddExp:Add, Edit, w330 h80 x10 y80 vExpand
	Gui, AddExp:Add, Button, x258 y28 w75 h23 +default gAddExpand, OK
	Gui, AddExp:Color, 545454
	Gui, AddExp:-Caption
	Gui, AddExp:Show, w350 h170, New Economy Expansion
	WinActivate, New Economy Expansion
	Return
	AddExpand:
	{
		Gui, AddExp:Submit
		FileAppend, `n:*:%Trigger%::`n{`n  printExpansion("%Expand%")`n  Return`n}, abbreviations\economy_expansions.txt
		WinActivate, %ActiveWindow%
		Reload
		Return
	}
	AddExpGuiEscape:
	{
		Gui, AddExp:Cancel
		WinActivate, %ActiveWindow%
		Reload
		Return
	}
}

:*:addeco::
{
	addExp()
	Return
}

#Include abbreviations\economy_expansions.txt
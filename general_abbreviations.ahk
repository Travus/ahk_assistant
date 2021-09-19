#NoEnv
#NoTrayIcon
#SingleInstance, Force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
DetectHiddenWindows, On
SetTimer, Refresh, 300000
return


Refresh:
Reload
Return

addAbb()
{
	global
	AbbrevGlobal := ""
	WinGetTitle, ActiveWindow, A
	Gui, AddAbb:Add, Text, x10 y10, Trigger / Hotstring
	Gui, AddAbb:Add, Edit, w230 h20 x10 y30 vHstring
	Gui, AddAbb:Add, Text, x10 y60, Abbriviation
	Gui, AddAbb:Add, Edit, w230 h20 x10 y80 vAbbrev
	Gui, AddAbb:Add, Button, x165 y108 w75 h23 +default gAddAbbrev, OK
	Gui, AddAbb:Add, Radio, x10 y110 Checked vAbbrevGlobal, Global
	Gui, AddAbb:Add, Radio, x75 y110, Local
	Gui, AddAbb:Add, Checkbox, Checked x130 y10 vNeedsEnding, Trigger instantly
	Gui, AddAbb:Color, 545454
	Gui, AddAbb:-Caption
	Gui, AddAbb:Show, w250 h140, New Abbreviation
	WinActivate, New Abbreviation
	Return
	AddAbbrev:
	{
		Gui, AddAbb:Submit
		If (AbbrevGlobal = 1)
		{
			If (NeedsEnding = 0)
			{
				FileAppend, `n::%Hstring%::%Abbrev%, abbreviations\global_abbreviations.txt
			}
			Else
			{
				FileAppend, `n:*:%Hstring%::%Abbrev%, abbreviations\global_abbreviations.txt
			}
		}
		Else
		{
			IfNotExist, abbreviations\%ActiveWindow%_abbreviations.txt
			{
				FileAppend, #IfWinActive %ActiveWindow%, abbreviations\%ActiveWindow%_abbreviations.txt
				FileAppend, `n#Include abbreviations\%ActiveWindow%_abbreviations.txt, %A_ScriptFullPath%
			}
			If (NeedsEnding = 0)
			{
				FileAppend, `n::%Hstring%::%Abbrev%, abbreviations\%ActiveWindow%_abbreviations.txt
			}
			Else
			{
				FileAppend, `n:*:%Hstring%::%Abbrev%, abbreviations\%ActiveWindow%_abbreviations.txt
			}
		}
		WinActivate, %ActiveWindow%
		Reload
		Return
	}
	AddAbbGuiEscape:
	{
		Gui, AddAbb:Cancel
		WinActivate, %ActiveWindow%
		Reload
		Return
	}
}

:*:addabb::
{
	addAbb()
	Return
}

#Include abbreviations\global_abbreviations.txt
#NoEnv
#NoTrayIcon
#SingleInstance, Force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
DetectHiddenWindows, On
main()
return


main() {
    SetCapsLockState, AlwaysOff
    SetScrollLockState, AlwaysOff
    if !if InStr(FileExist("clipboards"), "D") {
        FileCreateDir, clipboards
    }
}

volumeMixer()
{
	global
	IfWinNotActive, Volume Mixer
	{
		IfWinNotExist, Volume Mixer
		{
			WinGetTitle, ActiveWindow, A
			Run, C:\Windows\System32\SndVol.exe,,Hide
			Sleep 200
			mixerXPos := (A_ScreenWidth/2)-650
			mixerYPos := (A_ScreenHeight/2)-175
			WinMove, Volume Mixer,, %mixerXPos%, %mixerYPos%, 1300, 350
			WinShow, Volume Mixer
			WinSet, Style, -0xC00000, Volume Mixer
			WinActivate, Volume Mixer
		}
		Else
		{
			WinShow, Volume Mixer
			WinSet, Style, -0xC00000, Volume Mixer
			WinGetTitle, ActiveWindow, A
			WinActivate, Volume Mixer
		}
	}
	Else
	{
		WinHide,Volume Mixer
		WinActivate, %ActiveWindow%
	}
	Return
}


urlhub()
{
	global
	WinGetTitle, ActiveWindow, A
	IfWinNotExist, URL Hub
	{
		Gui, LinkHub:Color, 828282
		Gui, LinkHub:-Caption
		Gui, LinkHub:Add, Picture, x0 y0 w619 h400 +BackgroundTrans, resources\urlhub.png
		Gui, LinkHub:Add, Picture, x155 y43 w50 h50 gR1C1 +BackgroundTrans, resources\youtube.png
		Gui, LinkHub:Add, Picture, x275 y43 w50 h50 gR1C2 +BackgroundTrans, resources\twitch.png
		Gui, LinkHub:Add, Picture, x395 y43 w50 h50 gR1C3 +BackgroundTrans, resources\twitter.png
		Gui, LinkHub:Add, Picture, x515 y43 w50 h50 gR1C4 +BackgroundTrans, resources\deviantart.png
		Gui, LinkHub:Add, Picture, x155 y131 w50 h50 gR2C1 +BackgroundTrans, resources\youtube.png
		Gui, LinkHub:Add, Picture, x275 y131 w50 h50 gR2C2 +BackgroundTrans, resources\twitch.png
		Gui, LinkHub:Add, Picture, x395 y131 w50 h50 gR2C3 +BackgroundTrans, resources\twitter.png
		Gui, LinkHub:Add, Picture, x515 y131 w50 h50 gR2C4 +BackgroundTrans, resources\deviantart.png
		Gui, LinkHub:Add, Picture, x155 y219 w50 h50 gR3C1 +BackgroundTrans, resources\youtube.png
		Gui, LinkHub:Add, Picture, x275 y219 w50 h50 gR3C2 +BackgroundTrans, resources\twitch.png
		Gui, LinkHub:Add, Picture, x395 y219 w50 h50 gR3C3 +BackgroundTrans, resources\twitter.png
		Gui, LinkHub:Add, Picture, x515 y219 w50 h50 gR3C4 +BackgroundTrans, resources\deviantart.png
		Gui, LinkHub:Add, Picture, x155 y307 w50 h50 gR4C1 +BackgroundTrans, resources\reddit.png
		Gui, LinkHub:Add, Picture, x275 y307 w50 h50 gR4C2 +BackgroundTrans, resources\steam.png
		Gui, LinkHub:Add, Picture, x395 y307 w50 h50 gR4C3 +BackgroundTrans, resources\discord.png
		Gui, LinkHub:Add, Picture, x515 y307 w50 h50 gR4C4 +BackgroundTrans, resources\deviantart.png
		Gui, LinkHub:Show, w619 h400, URL Hub
		WinActivate, URL Hub
		Return
		LinkHubGuiEscape:
		{
			WinHide, URL Hub
			WinActivate, %ActiveWindow%
			Return
		}
		R1C1:
		{
			WinHide, URL Hub
			Run, https://www.youtube.com/user/NicoB7700
			WinActivate, Chrome.exe
			Return
		}
		R1C2:
		{
			WinHide, URL Hub
			Run, https://www.twitch.tv/nicob7700
			WinActivate, Chrome.exe
			Return
		}
		R1C3:
		{
			WinHide, URL Hub
			Run, https://twitter.com/NicoB7700/with_replies
			WinActivate, Chrome.exe
			Return
		}
		R1C4:
		{
			WinHide, URL Hub
			Run, https://nicob7700.deviantart.com/
			WinActivate, Chrome.exe
			Return
		}
		R2C1:
		{
			WinHide, URL Hub
			Run, https://www.youtube.com/user/EeveeVSHoOh/
			WinActivate, Chrome.exe
			Return
		}
		R2C2:
		{
			WinHide, URL Hub
			Run, https://www.twitch.tv/eeveevshooh
			WinActivate, Chrome.exe
			Return
		}
		R2C3:
		{
			WinHide, URL Hub
			Run, https://twitter.com/EeveeVSHoOh/with_replies
			WinActivate, Chrome.exe
			Return
		}
		R2C4:
		{
			WinHide, URL Hub
			Run, https://eeveevsho-oh.deviantart.com/
			WinActivate, Chrome.exe
			Return
		}
		R3C1:
		{
			WinHide, URL Hub
			Run, https://www.youtube.com/channel/UCae01H97Nl9E2HsmkdRbOvw
			WinActivate, Chrome.exe
			Return
		}
		R3C2:
		{
			WinHide, URL Hub
			Run, https://www.twitch.tv/imamuracross
			WinActivate, Chrome.exe
			Return
		}
		R3C3:
		{
			WinHide, URL Hub
			Run, https://twitter.com/ImamuraCross/with_replies
			WinActivate, Chrome.exe
			Return
		}
		R3C4:
		{
			WinHide, URL Hub
			Run, https://imamuracross.deviantart.com/
			WinActivate, Chrome.exe
			Return
		}
		R4C1:
		{
			WinHide, URL Hub
			Run, https://www.reddit.com/r/PickyPenguins/
			WinActivate, Chrome.exe
			Return
		}
		R4C2:
		{
			WinHide, URL Hub
			Run, http://steamcommunity.com/groups/SSLetsPlay
			WinActivate, Chrome.exe
			Return
		}
		R4C3:
		{
			WinHide, URL Hub
			Run, https://discordapp.com/invite/2wGJn9a
			WinActivate, Chrome.exe
			Return
		}
		R4C4:
		{
			WinHide, URL Hub
			Run, https://nico-fans-unite.deviantart.com
			WinActivate, Chrome.exe
			Return
		}
	}
}

RCtrl & Right::
{
	IfWinExist, URL Hub
	{
		IfWinActive, URL Hub
		{
			WinHide, URL Hub
			WinActivate, %ActiveWindow%
			Return
		}
		Else
		{
			WinGetTitle, ActiveWindow, A
			WinShow, URL Hub
			WinActivate, URL hub
			Return
		}
	}
	Else
	{
		urlhub()
		Return
	}
}

notePad()
{
	global
	IfWinNotActive, notepad.txt - Notepad
	{
		IfWinNotExist, notepad.txt - Notepad
		{
			WinGetTitle, ActiveWindow, A
			Run, notepad.txt,,Hide
			Sleep 200
			WinGetPos,,, Width, Height, notepad.txt - Notepad
    	WinMove, notepad.txt - Notepad,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
			WinShow, notepad.txt - Notepad
			WinSet, Style, -0xC00000, notepad.txt - Notepad
			WinActivate, notepad.txt - Notepad
		}
		Else
		{
			WinGetPos,,, Width, Height, notepad.txt - Notepad
            WinMove, notepad.txt - Notepad,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
			WinShow, notepad.txt - Notepad
			WinSet, Style, -0xC00000, notepad.txt - Notepad
			WinGetTitle, ActiveWindow, A
			WinActivate, notepad.txt - Notepad
		}
	}
	Else
	{
		Send, ^s
		WinHide, notepad.txt - Notepad
		WinActivate, %ActiveWindow%
	}
	Return
}

RCtrl & Left::
{
	notePad()
	Return
}


clipSave(save)
{
	tempClipboard := ClipboardAll
	Sleep 100
	Clipboard := ""
	Send, ^c
	ClipWait, 2
	FileDelete clipboards\%save%.clip
	FileAppend, %ClipboardAll%, clipboards\%save%.clip
	Sleep 100
	Clipboard := ""
	Clipboard := tempClipboard
	ClipWait, 2
	tempClipboard := ""
	Return
}

clipPaste(save)
{
	tempClipboard := ClipboardAll
	Sleep 100
	Clipboard := ""
	FileRead, Clipboard, *c clipboards\%save%.clip
	ClipWait, 2
	Send ^v
	Sleep 100
	Clipboard := ""
	Clipboard := tempClipboard
	ClipWait, 2
	tempClipboard := ""
	Return
}

clipDelete(save)
{
	FileDelete clipboards\%save%.clip
	Return
}

nextDate(day)
{
	Date := A_Now
  nextDate := ""
  while (nextDate <> day)
  {
  	Date += 1, Days
  	FormatTime, nextDate, %Date%, ddd
  }
  IfWinActive, Word
  {
    FormatTime, outDate, %Date%, dd.MM.yy
    Send, %outDate%
  }
  Else
  {
    FormatTime, outDate, %Date%, MM.dd.yy
    Send, %outDate%
  }
	Return
}

!CapsLock::
Run, C:\Windows\explorer.exe
Return
LShift & CapsLock::
Return

RCtrl & Down::
{
	volumeMixer()
	Return
}

;ClipSave

	RControl & 1::
	{
		clipSave("save1")
		Return
	}

	RControl & 2::
	{
		clipSave("save2")
		Return
	}

	RControl & 3::
	{
		clipSave("save3")
		Return
	}

	RControl & 4::
	{
		clipSave("save4")
		Return
	}

	RControl & 5::
	{
		clipSave("save5")
		Return
	}

	RControl & 6::
	{
		clipSave("save6")
		Return
	}

	RControl & 7::
	{
		clipSave("save7")
		Return
	}

	RControl & 8::
	{
		clipSave("save8")
		Return
	}

	RControl & 9::
	{
		clipSave("save9")
		Return
	}

	RControl & 0::
	{
		clipSave("save10")
		Return
	}

;ClipPaste

	XButton1 & 1::
	{
		clipPaste("save1")
		Return
	}

	XButton1 & 2::
	{
		clipPaste("save2")
		Return
	}

	XButton1 & 3::
	{
		clipPaste("save3")
		Return
	}

	XButton1 & 4::
	{
		clipPaste("save4")
		Return
	}

	XButton1 & 5::
	{
		clipPaste("save5")
		Return
	}

	XButton1 & 6::
	{
		clipPaste("save6")
		Return
	}

	XButton1 & 7::
	{
		clipPaste("save7")
		Return
	}

	XButton1 & 8::
	{
		clipPaste("save8")
		Return
	}

	XButton1 & 9::
	{
		clipPaste("save9")
		Return
	}

	XButton1 & 0::
	{
		clipPaste("save10")
		Return
	}

;ClipDelete
	
	XButton2 & 1::
	{
		clipDelete("save1")
		Return
	}

	XButton2 & 2::
	{
		clipDelete("save2")
		Return
	}

	XButton2 & 3::
	{
		clipDelete("save3")
		Return
	}

	XButton2 & 4::
	{
		clipDelete("save4")
		Return
	}

	XButton2 & 5::
	{
		clipDelete("save5")
		Return
	}

	XButton2 & 6::
	{
		clipDelete("save6")
		Return
	}

	XButton2 & 7::
	{
		clipDelete("save7")
		Return
	}

	XButton2 & 8::
	{
		clipDelete("save8")
		Return
	}

	XButton2 & 9::
	{
		clipDelete("save9")
		Return
	}

	XButton2 & 0::
	{
		clipDelete("save10")
		Return
	}


:*:.mon::
{
	nextDate("Mon")
	Return
}

:*:.tue::
{
  nextDate("Tue")
  Return
}

:*:.wed::
{
  nextDate("Wed")
  Return
}

:*:.thu::
{
  nextDate("Thu")
  Return
}

:*:.fri::
{
  nextDate("Fri")
  Return
}

:*:.sat::
{
  nextDate("Sat")
  Return
}

:*:.sun::
{
  nextDate("Sun")
  Return
}

:*:.today::
{
	IfWinActive, Word
	{
    	FormatTime, outDate, A_Now, dd.MM.yy
    	Send, %outDate%
  	}
  	Else
  	{
    	FormatTime, outDate, A_Now, MM.dd.yy
    	Send, %outDate%
  	}
  	Return
}

#MaxThreadsPerHotkey 2
RControl & F12::
{
	rightClickSpam := !rightClickSpam
	while rightClickSpam
	{
		Click, L
		Sleep 5
	}
}
Return

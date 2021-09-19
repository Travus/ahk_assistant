#NoEnv
#NoTrayIcon
#SingleInstance, Force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
DetectHiddenWindows, On
kb_mode := "EN"
return


show_language_indicator() {
    global kb_mode
	Gui, LanguageIndicator:Color, 828282
	Gui, LanguageIndicator:-Caption
	Gui, LanguageIndicator:+AlwaysOnTop
	Gui, LanguageIndicator:Font, s10 w600 c000000
	Gui, LanguageIndicator:Add, Text, x14 y17, %kb_mode%
	Gui, LanguageIndicator:Show, w50 h50 x10 y10 NA, Language Indicator
	Sleep 1000
	Gui, LanguageIndicator:Destroy
	Return
}

toggle_kb_mode() {
    global kb_mode
	if (kb_mode == "EN") {
		kb_mode := "NO"
	} else if (kb_mode == "NO") {
		kb_mode := "DE"
	} else if (kb_mode == "DE") {
		kb_mode := "FR"
	} else if (kb_mode == "FR") {
		kb_mode := " IS"
	} else if (kb_mode == " IS") {
		kb_mode := "EN"
	}
	show_language_indicator()
	return
}


#c::
{
	toggle_kb_mode()
	Return
}


#If kb_mode == "NO"
	Insert & e::
	{
		if GetKeyState("shift", "P") {
			Send, {U+00C6}
		} else {
			Send, {U+00E6}
		}
		return
	}

	Insert & o::
	{
		if GetKeyState("shift", "P") {
			Send, {U+00D8}
		} else {
			Send, {U+00F8}
		}
		return
	}

	Insert & a::
	{
		if GetKeyState("shift", "P") {
			Send, {U+00C5}
		} else {
			Send, {U+00E5}
		}
		return
	}

#If kb_mode == "DE"
	Insert & a::
	{
		if GetKeyState("shift", "P") {
			Send, {U+00C4}
		} else {
			Send, {U+00E4}
		}
		return
	}

	Insert & u::
	{
		if GetKeyState("shift", "P") {
			Send, {U+00DC}
		} else {
			Send, {U+00FC}
		}
		return
	}

	Insert & o::
	{
		if GetKeyState("shift", "P") {
			Send, {U+00D6}
		} else {
			Send, {U+00F6}
		}
		return
	}

	Insert & s::
	{
		if GetKeyState("shift", "P") {
			Send, {U+1E9E}
		} else {
			Send, {U+00DF}
		}
		return
	}

#If kb_mode == "FR"
	Insert & c::
	{
		if GetKeyState("shift", "P") {
			Send, {U+00C7}
		} else {
			Send, {U+00E7}
		}
		return
	}

	Insert & o::
	{
		if GetKeyState("shift", "P") {
			Send, {U+0152}
		} else {
			Send, {U+0153}
		}
		return
	}

#If kb_mode == " IS"
Insert & d::
{
	if GetKeyState("shift", "P") {
		Send, {U+00D0}
	} else {
		Send, {U+00F0}
	}
	return
}

Insert & p::
{
	if GetKeyState("shift", "P") {
		Send, {U+00DE}
	} else {
		Send, {U+00FE}
	}
	return
}

Insert & e::
	{
		if GetKeyState("shift", "P") {
			Send, {U+00C6}
		} else {
			Send, {U+00E6}
		}
		return
	}
	
	Insert & o::
	{
		if GetKeyState("shift", "P") {
			Send, {U+00D6}
		} else {
			Send, {U+00F6}
		}
		return
	}

#NoEnv
#SingleInstance, Force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
DetectHiddenWindows, On
main()
return


killAll() {
    WinClose, general_abbreviations.ahk - AutoHotkey
    WinClose, economy_expander.ahk - AutoHotkey
    WinClose, control_rebinds.ahk - AutoHotkey
    WinClose, special_keys.ahk - AutoHotkey
    WinClose, additional_functions.ahk - AutoHotkey
    ExitApp
    return
}

mainMenu() {
    global
    WinGetTitle, ActiveWindow, A
    if !WinExist("Assistant Menu") {
        Gui, MainMenu:Add, Picture, x0 y0 w275 h265 +BackgroundTrans, resources\background.png
        Gui, MainMenu:Add, Text, x6 y248 gstop +BackgroundTrans, Stop
        Gui, MainMenu:Font, s12 w700 cA31013
        Gui, MainMenu:Add, Text, x15 y10, AHK Assistant Controlboard
        Gui, MainMenu:Font, s10 w400 c000000
        Gui, MainMenu:Add, Text, x25 y50, General Abbreviations
        Gui, MainMenu:Add, Text, x25 y95, Economy Expander
        Gui, MainMenu:Add, Text, x25 y140, Control Rebinds
        Gui, MainMenu:Add, Text, x25 y185, Special Keys
        Gui, MainMenu:Add, Text, x25 y230, Additional Functions
        Gui, MainMenu:Add, Picture, x179 y41 w70 h35 gabbrevToggle +BackgroundTrans, resources\off.png
        Gui, MainMenu:Add, Picture, x179 y41 w70 h35 vAbbrevButton +BackgroundTrans, resources\on.png
        Gui, MainMenu:Add, Picture, x179 y86 w70 h35 gexpandToggle +BackgroundTrans, resources\off.png
        Gui, MainMenu:Add, Picture, x179 y86 w70 h35 vExpandButton hidden +BackgroundTrans, resources\on.png
        Gui, MainMenu:Add, Picture, x179 y131 w70 h35 gcontrolToggle +BackgroundTrans, resources\off.png
        Gui, MainMenu:Add, Picture, x179 y131 w70 h35 vControlButton +BackgroundTrans, resources\on.png
        Gui, MainMenu:Add, Picture, x179 y176 w70 h35 gspecialToggle +BackgroundTrans, resources\off.png
        Gui, MainMenu:Add, Picture, x179 y176 w70 h35 vSpecialButton +BackgroundTrans, resources\on.png
        Gui, MainMenu:Add, Picture, x179 y221 w70 h35 gfunctionToggle +BackgroundTrans, resources\off.png
        Gui, MainMenu:Add, Picture, x179 y221 w70 h35 vFunctionButton +BackgroundTrans, resources\on.png
        Gui, MainMenu:Color, 828282
        Gui, MainMenu:-Caption
        Gui, MainMenu:Show, w275 h265, Assistant Menu
        WinActivate, Assistant Menu
        return
    } else {
        WinShow, Assistant Menu
    }
}

abbrevToggle() {
    global
    generalAbbrev := !generalAbbrev
    if generalAbbrev {
        GuiControl, Show, AbbrevButton
        Run, general_abbreviations.ahk
    } else {
        GuiControl, Hide, AbbrevButton
        WinClose, general_abbreviations.ahk - AutoHotkey
    }
    return
}

expandToggle() {
    global
    economyExpand := !economyExpand
    if economyExpand {
        GuiControl, Show, ExpandButton
        Run, economy_expander.ahk
    } else {
        GuiControl, Hide, ExpandButton
        WinClose, economy_expander.ahk - AutoHotkey
    }
    return
}

controlToggle() {
    global
    controlRebind := !controlRebind
    if controlRebind {
        GuiControl, Show, ControlButton
        Run, control_rebinds.ahk
    } else {
        GuiControl, Hide, ControlButton
        WinClose, control_rebinds.ahk - AutoHotkey
    }
    return
}

specialToggle() {
    global
    specialKeys := !specialKeys
    if specialKeys {
        GuiControl, Show, SpecialButton
        Run, special_keys.ahk
    } else {
        GuiControl, Hide, SpecialButton
        WinClose, special_keys.ahk - AutoHotkey
    }
    return
}

functionToggle() {
    global
    additionalFunct := !additionalFunct
    if additionalFunct {
        GuiControl, Show, FunctionButton
        Run, additional_functions.ahk
    } else {
        GuiControl, Hide, FunctionButton
        WinClose, additional_functions.ahk - AutoHotkey
    }
    return
}

mainMenuGuiEscape() {
    global
    WinHide, Assistant Menu
    WinActivate, %ActiveWindow%
    return
}

stop() {
    killAll()
    return
}

main() {
    global
    Run, general_abbreviations.ahk
    Run, control_rebinds.ahk
    Run, special_keys.ahk
    Run, additional_functions.ahk
    generalAbbrev := True
    economyExpand := False
    controlRebind := True
    specialKeys := True
    additionalFunct := True
    return
}


RCtrl & Up::
{
    if WinExist("Assistant Menu") {
        if WinActive("Assistant Menu") {
            WinHide, Assistant Menu
            WinActivate, %ActiveWindow%
            return
        } else {
            WinGetTitle, ActiveWindow, A
            WinShow, Assistant Menu
            WinActivate, Assistant Menu
            return
        }
    } else {
        mainMenu()
        return
    }
}


~*Esc::
{
    KeyWait, Esc, T5
    if ErrorLevel {
        killAll()
    }
    return
}


RCtrl & RShift::
{
    WinClose, general_abbreviations.ahk - AutoHotkey
    WinClose, economy_expander.ahk - AutoHotkey
    WinClose, control_rebinds.ahk - AutoHotkey
    WinClose, special_keys.ahk - AutoHotkey
    WinClose, additional_functions.ahk - AutoHotkey
    Reload
    return
}

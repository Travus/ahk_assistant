#NoEnv
#NoTrayIcon
#SingleInstance, Force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 3
DetectHiddenWindows, On
return


;Undertale

	#IfWinActive UNDERTALE
	w::Up
	a::Left
	s::Down
	d::Right
	LButton::z
	RButton::x
	Numpad1::c


;Final Fantasy XIII

	#IfWinActive FINAL FANTASY XIII
	+esc::Escape
	esc::9


;Danganronpa: Trigger Happy Havoc

	#IfWinActive Danganronpa : Trigger Happy Havoc
	q::tab
	e::LShift
	esc::F1
	m::F1
	F1::esc
	z::q
	c::e


;Danganronpa 2: Goodbye Despair

	#IfWinActive Danganronpa 2 : Goodbye Despair
	q::tab
	e::LShift
	m::F1
	z::q
	c::e
	NumpadSub::F1


;Danganronpa 3note: Goodbye Despair

	#IfWinActive Danganronpa 3 : Goodbye Despair
	q::tab
	e::LShift
	m::F1
	z::q
	c::e
	NumpadSub::F1


;Super Meat Boy

	#IfWinActive Super Meat Boy
	a::Left
	d::Right
	w::Up
	s::Down
	Up::LShift


	;The Witness
	#IfWinActive The Witness
	e::Shift


;Danganronpa Another Episode: Ultra Despair Girls
	#IfWinActive, Danganronpa Another Episode: Ultra Despair Girls
	r::Shift

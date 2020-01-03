#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

:*:,mail::odedginat@gmail.com
:*:,spam::twolatepro@gmail.com
:*:,tel::0527308798

#c::
run, calc.exe
return

~g & i::
run, http://www.google.com/images
return

~g & m::
run, http://www.google.com/maps
return

~p & s::
run, "D:\SteamLibrary\steamapps\common\ShareX\ShareX.exe"
return

~^c::
clipboard := ""  ; Start off empty to allow ClipWait to detect when the text has arrived.
Send ^c
ClipWait  ; Wait for the clipboard to contain text.

FileAppend, `n%clipboard%, D:\Downloads\clipboard.txt
return

Launch_Mail::
run http://www.google.com/mail
return


~Numpad1 & Numpad2::
run Spotify.exe
sleep, 2000
WinActivate, Spotify
sleep, 2000
Send ^l
sleep, 200
Send spotify:album:30ly6F6Xl0TKmyBCU50Khv
sleep, 500
Send {enter}
sleep, 500
Send ^l{tab}{tab}{enter}
sleep, 500
Send {enter}


return


:*:,if::
send if():{enter}{enter}pass{up}{up}{left}{left}
return

:*:,class::
send {Home}class{space}{end}:{enter}{enter}pass{up}def __init__(self):{enter}{enter}pass{up}


~+^3::
Send TODO
return
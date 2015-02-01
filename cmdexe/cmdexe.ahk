#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; cmdexe.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------


PasteInCmdexe()
{
    ; alt-space -> (e)dit -> (p)aste
    Sleep 200
    SendInput !{Space}
    Sleep 200
    SendInput e
    Sleep 200
    SendInput p
}


SelectAllInCmdexe()
{
    ; alt-space -> (e)dit -> (s)elect all
    Sleep 200
    SendInput !{Space}
    Sleep 200
    SendInput e
    Sleep 200
    SendInput s
}


FindInCmdexe()
{
    ; alt-space -> (e)dit -> (f)ind
    Sleep 200
    SendInput !{Space}
    Sleep 200
    SendInput e
    Sleep 200
    SendInput f
}


#IfWinActive ahk_class ConsoleWindowClass

; ctrl-v
^v::
    PasteInCmdexe()
Return

; ctrl-a
^a::
    SelectAllInCmdexe()
Return

; ctrl-f
^f::
    FindInCmdexe()
Return

#IfWinActive

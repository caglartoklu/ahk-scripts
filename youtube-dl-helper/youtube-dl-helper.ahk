#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; youtube-dl-helper.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------


PasteInDos()
{
    ; alt-space -> edit -> paste
    Sleep 200
    SendInput !{Space}
    Sleep 200
    SendInput e
    Sleep 200
    SendInput p
}

#IfWinActive ahk_class ConsoleWindowClass

::yff::
    SendInput youtube-dl -F -- ""
    SendInput {Left}
    PasteInDos()
Return

::y22::
    SendInput youtube-dl -t --write-description -f 22 -- ""
    SendInput {Left}
    PasteInDos()
Return

::y44::
    SendInput youtube-dl -t --write-description -f 44 -- ""
    SendInput {Left}
    PasteInDos()
Return

::y18::
    SendInput youtube-dl -t --write-description -f 18 -- ""
    SendInput {Left}
    PasteInDos()
Return

#IfWinActive

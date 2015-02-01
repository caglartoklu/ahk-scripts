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


BuildLink(command)
{
    videoLink := Clipboard
    command := command . """" . videoLink . """"
    Clipboard := command
    ClipWait
    PasteInDos()
    Sleep 1000
    Clipboard := videoLink
}


#IfWinActive ahk_class ConsoleWindowClass

::yff::
    command := "youtube-dl -F -- "
    BuildLink(command)
Return

::y22::
    command := "youtube-dl -t --write-description -f 22 -- "
    BuildLink(command)
Return

::y44::
    command := "youtube-dl -t --write-description -f 44 -- "
    BuildLink(command)
Return

::y18::
    command := "youtube-dl -t --write-description -f 18 -- "
    BuildLink(command)
Return



#IfWinActive ahk_class Console_2_Main

::yff::
    command := "youtube-dl -F -- "
    BuildLink(command)
Return

::y22::
    command := "youtube-dl -t --write-description -f 22 -- "
    BuildLink(command)
Return

::y44::
    command := "youtube-dl -t --write-description -f 44 -- "
    BuildLink(command)
Return

::y18::
    command := "youtube-dl -t --write-description -f 18 -- "
    BuildLink(command)
Return

#IfWinActive

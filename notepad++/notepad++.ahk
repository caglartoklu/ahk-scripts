#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; notepad++.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

; >>>>>>>>>>( Window Title & Class )<<<<<<<<<<<
; *new  0 - Notepad++
; ahk_class Notepad++
; ahk_exe notepad++.exe


#IfWinActive ahk_class Notepad++


^+c::  ; ctrl+shift+c
    SendInput !p  ; alt+p
    SendInput n  ; NppExport
    SendInput {right}
    SendInput {down}
    SendInput {down}
    SendInput {down}
    SendInput {down}
    SendInput {enter}
Return

#IfWinActive

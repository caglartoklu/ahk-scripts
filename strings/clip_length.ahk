#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; clip_length.ahk
;     Displays the length of the contents of clipboard when
;     a specific key combination is used.
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

^+c::  ; ctrl-shift-c
    contents = %clipboard%
    StringLen, clipLength, contents
    MsgBox, %contents% `nlength: %clipLength%
Return

#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; firefox_save_in_archive.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

; >>>>>>>>>>( Window Title & Class )<<<<<<<<<<<
; ahk_class MozillaWindowClass

#IfWinActive ahk_class MozillaWindowClass

^s::  ; ctrl-s
  SendInput !f  ; alt-f
  Sleep 200
  SendInput g
Return

#IfWinActive

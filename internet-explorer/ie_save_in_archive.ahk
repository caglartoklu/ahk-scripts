#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; ie_save_in_archive.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

; >>>>>>>>>>( Window Title & Class )<<<<<<<<<<<
; New tab - Internet Explorer
; ahk_class IEFrame

#IfWinActive ahk_class IEFrame

^s::  ; ctrl-s
  SendInput ^s  ; send a real ctrl-s

  ; "Save Webpage" dialog box will pop up.
  ; >>>>>>>>>>( Window Title & Class )<<<<<<<<<<<
  ; Save Webpage
  ; ahk_class #32770

  WinWaitActive, Save Webpage
  SendInput {Tab}  ; jump to the "Save as type" box
  SendInput Web Archive  ; type a few characters to select
  SendInput +{Tab}  ; jump back to the file name box
Return

#IfWinActive

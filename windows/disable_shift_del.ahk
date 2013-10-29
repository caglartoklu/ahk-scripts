#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; disable_shift_del.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------


+Delete::
  KeyWait Shift
  SendInput {Delete}

  ; Automatically press Yes
  WinWait, ahk_class #32770, ,2
  if ErrorLevel
  {
    ; there is no such a window,
    ; this is the case on Windows 8
    ; do nothing then.
  }
  else
  {
    ; there is a yes/no window, press 'y',
    ; this is the case on Windows 7
    SendInput !y
  }
Return

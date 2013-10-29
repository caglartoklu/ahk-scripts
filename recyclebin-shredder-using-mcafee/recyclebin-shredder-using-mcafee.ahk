#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; recyclebin-shredder-using-mcafee.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------


; >>>>>>>>>>( Window Title & Class )<<<<<<<<<<<
; McAfee LiveSafe – Internet Security
; ahk_class AB80AD1E41A445efAB585BDC60B29776

; the executable path has been obtain from the shortcut in:
; C:\ProgramData\Microsoft\Windows\Start Menu\Programs\McAfee

Run, "C:\Program Files\mcafee.com\agent\mcagent.exe" /desktopicon /platui
WinWait, ahk_class AB80AD1E41A445efAB585BDC60B29776

; Click on "Data Protection and Backup"
MouseClick, left, 800, 250
; this can take sometime, so make sure there is enough time:
sleep 4000

; Click on "Shredder"
MouseClick, left, 115, 295
sleep 500

; Click on blue "Shred" button at the bottom of screen
MouseClick, left, 700, 760

; Click on another blue "Shred" button in the opened dialog
MouseClick, left, 800, 510

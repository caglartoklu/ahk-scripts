#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; clean_temp_files_of_ie.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

; http://www.sevenforums.com/tutorials/24072-internet-options-shortcut-create.html
; opens the "General" tab of "Internet Options"
Run % A_WinDir . "\System32\rundll32.exe shell32.dll,Control_RunDLL inetcpl.cpl,,0"

; >>>>>>>>>>( Window Title & Class )<<<<<<<<<<<
; Internet Properties
; ahk_class #32770

; ahk_class #32770 is generic, using the Window title instead:
WinWaitActive, Internet Properties
Sleep 300
SendInput !d  ; first (D)elete button
Sleep 300
SendInput !d  ; another (D)elete button

; Another window will be displayed at this point,
; with a progress bar.
; To avoid closing it, wait until our window is active again.
WinWaitActive, Internet Properties
SendInput {Esc}

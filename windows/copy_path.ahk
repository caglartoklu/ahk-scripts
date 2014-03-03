#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; copy_path.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

; Thanks for the info at:
; http://www.autohotkey.com/docs/Scripts.htm#cmd

separator:=
data:=
Loop %0%  ; For each parameter (or file dropped onto a script):
{
    givenPath := %A_Index%  ; Fetch the contents of the variable whose name is contained in A_Index.
    Loop %givenPath%, 1
        LongPath = %A_LoopFileLongPath%
    ; MsgBox The case-corrected long path name of file`n%givenPath%`nis:`n%LongPath%
    data = %data%%separator%%LongPath%
    separator = `r`n
}

Clipboard =  ; clear clipboard
Clipboard = %data%
ClipWait ; Waits until the clipboard contains data.

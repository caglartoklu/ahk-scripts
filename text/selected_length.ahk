#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; selected_length.ahk
;     Displays the length of the selected string.
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

^+s::  ; ctrl-shift-s
    ; unlike = operator, := does not trim automatically
    ; Backup the entire clipboard
    clipboardBackup := ClipboardAll

    Clipboard =  ; clear clipboard
    SendInput ^c ; ctrl-c copy to clipboard
    ClipWait  ; Wait for the clipboard to contain text.

    contents := clipboard
    StringLen, clipLength, contents
    Clipboard := clipboardBackup ; Restore the original clipboard.
    MsgBox, %contents% `nlength: %clipLength%
Return

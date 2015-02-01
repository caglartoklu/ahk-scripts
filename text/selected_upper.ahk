#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; selected_upper.ahk
;     UPPER case the selected text.
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

^+u::  ; ctrl-shift-u
    ; Backup the entire clipboard
    clipboardBackup := ClipboardAll

    Clipboard =  ; clear clipboard
    SendInput ^c ; ctrl-c copy to clipboard
    ClipWait  ; Wait for the clipboard to contain text.

    contents := clipboard
    StringUpper, contentsOut, contents

    Clipboard = %contentsOut%
    ClipWait  ; Wait for the clipboard to contain text.
    SendInput ^v ; ctrl-c copy to clipboard

    Clipboard = %clipboardBackup% ; Restore the original clipboard.
Return

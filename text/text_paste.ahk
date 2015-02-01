#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; text_paste.ahk
;     Pastes the contens of the clipboard without pictures and formatting.
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

^+v::  ; ctrl-shift-v
    ; Backup the entire clipboard
    clipboardBackup := ClipboardAll

    ; Put only the text content back to clipboard
    Clipboard := Clipboard
    ClipWait  ; Wait for the clipboard to contain text.
    SendInput ^v ; ctrl-v paste from clipboard

    Sleep, 500
    Clipboard = %clipboardBackup% ; Restore the original clipboard.
    ClipWait  ; Wait for the clipboard to contain text.
Return

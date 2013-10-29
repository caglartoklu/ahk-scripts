#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; excel2010_untrust_docs.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------


Run, Excel
WinWait, ahk_class XLMAIN
Sleep 1000

SendInput !f ; alt-f
Sleep 500

SendInput t ; options
Sleep 200

SendInput t ; trust center
Sleep 200
WinWait, ahk_class NUIDialog

SendInput !t ; trust center settings
Sleep 200
WinWait, ahk_class NUIDialog

SendInput {Home}
SendInput {Down}
SendInput {Down} ; on Trusted Documents
SendInput !c ; Clear
SendInput !y ; Yes
Sleep 200

SendInput {Escape}
Sleep 200

SendInput {Escape}
Sleep 200

SendInput !{F4}

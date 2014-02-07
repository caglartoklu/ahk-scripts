#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; vs_keys_for_sharpdevelop.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

; >>>>>>>>>>( Window Title & Class )<<<<<<<<<<<
; ProjectName - SharpDevelop
; ahk_class HwndWrapper[SharpDevelop.exe;;6a0ec543-5ff8-45d9-8305-b35c5b52d28d]

SetTitleMatchMode 2
#IfWinActive, SharpDevelop


; BEGIN -------------------- File menu
^+n:: ; ctrl-shift-n
    ; new project
    SendInput !f
    Sleep 100
    SendInput n
    Sleep 100
    SendInput p
Return
; END -------------------- File menu



; TODO: Edit menu
; TODO: View menu



; BEGIN -------------------- Project menu
^+a:: ; ctrl-shift-a
    ; add new item
    SendInput !p
    Sleep 100
    SendInput {down}
    Sleep 50
    SendInput {right}
    Sleep 50
    SendInput n
Return



+!a:: ; shift-alt-a
    ; add existing item
    SendInput !p
    Sleep 100
    SendInput {down}
    Sleep 50
    SendInput {right}
    Sleep 50
    SendInput {down}
    Sleep 50
    SendInput {enter}
Return



!f7:: ; alt-f7
    ; project properties
    SendInput !p
    Sleep 100
    SendInput {up 2}
    Sleep 50
    SendInput {enter}
Return
; END -------------------- Project menu



; BEGIN -------------------- Build menu
f7:: ;
    ; build solution
    SendInput {f8}
Return

^!f7:: ; ctrl-alt-f7
    ; rebuild solution
    SendInput !{f8}
Return

!f11:: ; alt-f11
    ; run code analysis
    ; there are more than one code analysis tool
    ; for SharpDevelop, instead of opening a
    ; specific one, open the mnue for all of them.
    SendInput !a
Return
; END -------------------- Build menu



; BEGIN -------------------- Debug menu

f9:: ;
    ; toggle breakpoint
    SendInput {f7}
Return

; END -------------------- Debug menu



; BEGIN -------------------- right click
f12::
    ; go to definition
    SendInput ^{enter}
Return
; END -------------------- right click

#IfWinActive

#NoEnv  ; Performance and compatibility with future AutoHotkey releases.
#SingleInstance force

#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; For new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; sleep_after_vlc.ahk
; https://github.com/caglartoklu/ahk-scripts
; License:
; 2-clause license ("Simplified BSD License" or "FreeBSD License")
; See the LICENSE file at home page.
; ----------------------------------------------------------------------------

; >>>>>>>>>>( Window Title & Class )<<<<<<<<<<<
; VLC media player
; ahk_class QWidget

InputBox, secondsToWait, sleep_after_vlc, Please enter the seconds before shutdown after closing VLC media player, , , , , , ,5, 20
if ErrorLevel = 1
{
    ; Cancel pressed
    Msgbox, 0, , Shutdown aborted, 2
}
else
{
    WinWait, VLC media player
    WinWaitClose  ; Wait for the exact window found by WinWait to be closed.
    ; 1: ok/cancel
    MsgBox, 1, , VLC closed - countdown to shutdown, %secondsToWait%
    IfMsgBox, Cancel
    {
        ; 0: ok
        Msgbox, 0, , Shutdown aborted, 2
    }
    Else
    {
        ; 1: shut down
        ; 8: power down
        Shutdown, 1
    }
}

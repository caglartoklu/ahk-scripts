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

iniFile := "sleep_after_vlc.ini"
vlcTitleDefault := "VLC media player"

iniSection := "VLC"
iniKey := "title"
IniRead, vlcTitle, %iniFile%, %iniSection%, %iniKey%, %vlcTitleDefault%

IfWinExist, %vlcTitle%
{
    ; VLC window already exists, do nothing.
    ; Msgbox, 0, , %vlcTitle% exists, 2
}
else
{
    ; VLC media player is not running.
    vlcPathDefault := "C:\Program Files (x86)\VideoLAN\VLC\vlc.exe"
    iniSection := "VLC"
    iniKey := "exepath"
    IniRead, vlcExePath, %iniFile%, %iniSection%, %iniKey%, %vlcPathDefault%
    IfExist, %vlcExePath%
    {
        ; VLC executable found, run it.
        Run, %vlcExePath%

        ; make sure "Quit at the end of playlist is selected"
        WinWait, %vlcTitle% ; wait until the window exists
        WinActivate, %vlcTitle% ; activete the windows
        SendInput !m ; alt-m for the (m)edia menu
        Sleep 200
        SendInput {Up}
        SendInput {Up}
        Sleep 100
        SendInput {Enter}
        Sleep 100
        SendInput {Esc}
    }
    else
    {
        ; VLC executable not found, just warn the user
        Msgbox, 0, , %vlcExePath% not found - please check: %iniFile%, 5
    }
}

InputBox, secondsToWait, sleep_after_vlc, Please enter the seconds before shutdown after closing VLC media player, , , , , , ,5, 20
if ErrorLevel = 1
{
    ; Cancel pressed
    Msgbox, 0, , Shutdown aborted, 2
}
else
{
    WinWait, %vlcTitle%
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

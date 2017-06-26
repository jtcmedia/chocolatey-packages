#NoEnv
#NoTrayIcon
SendMode Input
DetectHiddenText, off  ;toggle search hidden window text
DetectHiddenWindows, off  ;toggle detect hidden windows
SetTitleMatchMode, 2   ;contains

winTitle = Windows Security ahk_class #32770

Loop, 3
{
    WinWait, %winTitle%
    WinActivate
    ControlClick, &Install, %winTitle%
}

ExitApp
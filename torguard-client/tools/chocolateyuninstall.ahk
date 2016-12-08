#NoEnv
#NoTrayIcon
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 1   ;begins

winTitle = TAP-Windows ahk_class #32770

WinWait, %winTitle%, , 300
ControlClick, Button2, %winTitle%

ExitApp
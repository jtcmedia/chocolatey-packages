#NoEnv
#NoTrayIcon
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 2   ;contains

winTitle = WordWeb ahk_class #32770

WinWait, %winTitle%
WinActivate, %winTitle%
ControlClick, Yes, %winTitle%
WinWait, %winTitle%
WinActivate, %winTitle%
ControlClick, OK, %winTitle%

ExitApp

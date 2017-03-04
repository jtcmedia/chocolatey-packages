#NoEnv
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 2   ;contains

winTitle = TAP-Windows ahk_class #32770
WinWait, %winTitle%, , 20
ControlClick, Uninstall, %winTitle%
Sleep, 500
ControlClick, Next, %winTitle%
ControlClick, Finish, %winTitle%

ExitApp
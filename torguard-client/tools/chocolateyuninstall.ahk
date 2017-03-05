#NoEnv
#NoTrayIcon
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 2   ;contains

winTitle = TAP-Windows ahk_class #32770
WinWait, %winTitle%, , 300
ControlClick, Uninstall, %winTitle%
Sleep, 1000
ControlClick, Next, %winTitle%
Sleep, 1000
ControlClick, Finish, %winTitle%

ExitApp
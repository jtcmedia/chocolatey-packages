#NoEnv
#NoTrayIcon
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 2   ;contains

winTitle = Windows Security ahk_class #32770
winTitle2 = Microsoft Visual C++ 2015 ahk_class WixStdBA

WinWait, %winTitle%, , 300
ControlClick, Install, %winTitle%

WinWait, %winTitle2%
ControlClick, Repair, %winTitle2%
Sleep, 5000
ControlClick, Close, %winTitle2%

ExitApp
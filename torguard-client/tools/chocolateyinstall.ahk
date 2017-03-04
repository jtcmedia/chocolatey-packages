#NoEnv
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 2   ;contains

winTitle = Windows Security ahk_class #32770
winTitle2 = Microsoft Visual C++ 2015 ahk_class WixStdBA

Sleep, 5000
IfWinNotExist, %winTitle2%
{
    winTitle = Windows Security ahk_class #32770
    WinWait, %winTitle%, , 300
    ControlClick, Install, %winTitle%
}

WinWait, %winTitle2%, , 20
ControlClick, Repair, %winTitle2%
Sleep, 500
ControlClick, Close, %winTitle2%

ExitApp
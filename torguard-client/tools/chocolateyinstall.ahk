#NoEnv
#NoTrayIcon
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 2   ;contains

winTitle = Windows Security ahk_class #32770
winTitle2 = Microsoft Visual C++ ahk_class WixStdBA

Loop
{
    IfWinExist, %winTitle%
    {
        WinActivate
        ControlClick, Install, %winTitle%
    }
    IfWinExist, %winTitle2%
    {
        WinWait, , Modify Setup
        ControlClick, Repair, %winTitle2%
        WinWait, , Setup Successful
        ControlClick, Close, %winTitle2%
        Break
    }
}

ExitApp

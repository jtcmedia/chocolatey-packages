#NoEnv
#NoTrayIcon
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 2   ;contains

winTitle = Windows Security ahk_class #32770
winTitle2 = Microsoft Visual C++ ahk_class WixStdBA
winTitle3 = Microsoft Visual C++ ahk_class #32770

Loop
{
    IfWinExist, %winTitle%
    {
        WinActivate
        ControlClick, Install, %winTitle%
    }
    IfWinExist, %winTitle2%
    {
        ControlClick, Close, %winTitle2% 
        WinWait, %winTitle3%
        WinActivate, %winTitle3%
        ControlClick, Yes, %winTitle3%
        Break
    }
}

ExitApp

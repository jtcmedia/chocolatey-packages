#NoEnv
#NoTrayIcon
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 2   ;contains

winTitle = WordWeb Dictionary/Thesaurus Setup ahk_class TMain
winTitle2 = Install Options ahk_class TOptionsDi

allUsers = %1%
noSysTray = %2%
locale = %3%

WinWait, %winTitle%
WinActivate, %winTitle%
if (allUsers = "True")
{
    ControlClick, TCheckBox1, %winTitle%
}
if (noSysTray = "True")
{
    ControlClick, TButton3, %winTitle%
    WinWait, %winTitle2%
    WinActivate, %winTitle2%
    ControlClick, TRadioButton1, %winTitle2%
    ControlClick, TButton1, %winTitle2%
    WinWait, %winTitle%
    WinActivate, %winTitle%
}
ControlClick, Next, %winTitle%
ControlClick, %locale%, %winTitle%
ControlClick, Install, %winTitle%
WinWait, %winTitle%
ControlClick, Next, %winTitle%
WinWait, %winTitle%
ControlClick, Close, %winTitle%

ExitApp

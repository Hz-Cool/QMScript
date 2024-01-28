[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=f2a1029b-2f7a-4c4b-a2d7-c0755ae4d1de
Description=抽卡
Enable=0
AutoRun=0
[Repeat]
Type=1
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Delay 1000
//随机抽卡
Dim num
num = Lib.算法.随机数字串(1)
If num < 6 Then 
    Call Plugin.Msg.ShowScrTXT(0, 0, 200, 200, num, "0000FF")
    MoveTo 375,285
    If num = 1 Then 
        MoveTo 375,285
    End If
    If num = 2 Then 
        MoveTo 496,285
    End If
    If num = 3 Then 
        MoveTo 648,285
    End If
    If num = 4Then 
        MoveTo 370,459
    End If
    If num = 5 Then 
        MoveTo 500,468
    End If
    If num = 0 Then 
        MoveTo 643,459
    End If
    Delay 300
    LeftClick 1
    Delay 2000
    // 放弃
    MoveTo 520, 619
    Delay 300
    LeftClick 2
    // 下一个
    Delay 4000
End If

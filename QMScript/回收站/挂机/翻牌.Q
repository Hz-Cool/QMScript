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
MacroID=ae135ddc-9503-402e-9e26-115a4b5b5b01
Description=翻牌
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=5
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Delay 500
i = 10
// 循环次数
count=35 
While i<>0
    If count>0 Then  
        // 抽卡随机数
        num = Lib.算法.随机数字串(1)
        // 保留0到5
        If num >= 6 Then 
            num = num - 6
        End If
        // 本次输出
        TracePrint "随机数：" & num & "，倒数第：" & count
        // 点击翻拍
        If num = 0 Then 
            MoveTo 282, 285
            LeftClick 1
        End If
        If num = 1 Then 
            MoveTo 413,287 
            LeftClick 1
        End If
        If num = 2 Then 
            MoveTo 551,300
            LeftClick 1
        End If
        If num = 3 Then 
            MoveTo 272,474 
            LeftClick 1
        End If
        If num = 4 Then 
            MoveTo 418,478
            LeftClick 1
        End If
        If num = 5 Then 
            MoveTo 545,476
            LeftClick 1
        End If
        // 放弃本次
        Delay 2500
        MoveTo 446, 635
        LeftClick 1
        // 等待下一次
        count=count-1
        Delay 2888

    End If
Wend

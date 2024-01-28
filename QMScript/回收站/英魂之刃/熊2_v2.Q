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
MacroID=5afd5072-322b-4343-a4a7-c1ea9dc3ef80
Description=熊2_v2
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
Dim BossType
BossType = 0
i=10
While i <> 0
    showText(BossType)
    Delay 1000
    // 单人挑战按钮
    FindPic 1019,587,1210,668,"C:\Users\Administrator\Desktop\AJJL\t0\2\play.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 And BossType = 0 Then 
        MoveTo 1129, 630
        LeftClick 2
    End If
    Delay 1000
    // 进入第一个boss图 重复扫描
    If BossType = 0 Then
        MoveTo 1217, 683
        RightClick 2
    End If
    // 确认第一个boss
    FindPic 457,21,655,128,"C:\Users\Administrator\Desktop\AJJL\t0\2\boss1.bmp",0.5,intX,intY
    If intX> 0 And intY> 0 And BossType = 0 Then
        BossType = 1
        KeyPress "A", 1
        LeftClick 2
    End If
    Delay 1000 
    // 第二个Boss第一阶段 （2）
    If BossType = 2 Then
        MoveTo 1190, 705
        RightClick 2
        Delay 30000
        BossType = 3
    End If
    // 第二个Boss第二阶段 （3）
    If BossType = 3 Then
        MoveTo 1170, 684
        RightClick 2
    End If
    // 确认第二个boss （3）
    FindPic 457,21,655,128,"C:\Users\Administrator\Desktop\AJJL\t0\2\boss2.bmp",0.5,intX,intY
    If intX> 0 And intY> 0 And BossType = 3 Then
        BossType = 4
        KeyPress "A", 1
        LeftClick 2
    End If
    // 第三个Boss第一阶段 （5）
    If BossType = 5 Then
        MoveTo 1224, 649
        RightClick 2
        Delay 30000
        KeyPress "A", 1
        LeftClick 2
        Delay 30000
        BossType = 6
    End If
    // 第三个Boss第二阶段 （6）
    If BossType = 6 Then
        MoveTo 1211, 630
        RightClick 2
        Delay 30000
        BossType = 7
    End If
    // 第三个Boss（7）
    If BossType = 7 Then
        MoveTo 1182, 643
        RightClick 2
        Delay 20000
        BossType = 8
    End If
    // 确认第三个boss （8）
    FindPic 457,21,655,128,"C:\Users\Administrator\Desktop\AJJL\t0\2\boss3.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 And BossType = 8 Then 
        
    End If
    // 扫描重生按钮
    FindPic 430,338,1000,594,"C:\Users\Administrator\Desktop\AJJL\t0\reset.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 20, intY + 20
        LeftClick 2
    End If
    Delay 1000
    // 点击打开宝箱
    FindPic 561,572,835,678,"C:\Users\Administrator\Desktop\AJJL\t0\openBox.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 10, intY + 10
        LeftClick 2
    End If
    Delay 1000
    // 稍后抽取
    FindPic 288,570,621,669,"C:\Users\Administrator\Desktop\AJJL\t0\wait.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 10, intY + 10
        LeftClick 2
        BossType = BossType+1
    End If
    Delay 1000
    // 退出副本
    FindPic 509,344,861,541,"C:\Users\Administrator\Desktop\AJJL\t0\exit.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 10, intY + 10
        LeftClick 2
        BossType = 0
    End If
    Delay 1000
    // 关闭获得奖励
    FindPic 685,416,824,503,"C:\Users\Administrator\Desktop\AJJL\t0\send.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 10, intY + 10
        LeftClick 2
    End If
Wend
Function showText(text)
    Call Plugin.Msg.ShowScrTXT(0, 0, 200, 200, text, "0000FF")
End Function
Function lucky
    Delay 1000
    //随机抽卡
    Dim num
    num = Lib.算法.随机数字串(1)
    MoveTo 643,459
    Call Plugin.Msg.ShowScrTXT(0, 0, 200, 200, num, "0000FF")
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
        MoveTo 570,459
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
End Function

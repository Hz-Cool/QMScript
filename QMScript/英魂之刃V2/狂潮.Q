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
MacroID=b6e1b11e-c46d-4349-85e0-eb087cff6f1b
Description=狂潮
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
Dim 小号// 0无 1 有
小号 = 1
开始匹配
Sub 开始匹配
    TracePrint "开始匹配"
    If 小号 = 1 Then 
        // 退出教程
        MoveTo 1851,686 
        LeftClick 1
        Delay 3000
        // 准备
        MoveTo 1631, 539
        LeftClick 1
        Delay 3000
    End If
    FindPic 422,573,1277,757,"C:\yhzr\狂潮\开始匹配.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        LeftClick 1
        Delay 3000
        Call 接受匹配
    End If
End Sub
Sub 接受匹配
    TracePrint "接受匹配"
    While True
        Delay 1000
        FindPic 242,222,905,638,"C:\yhzr\狂潮\接受2.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            If 小号 = 1 Then 
                MoveTo 1522,430
                LeftClick 1
                Delay 3000
            End If
            Delay 1000
            MoveTo 529,468
            LeftClick 1
            Call 打怪挂机
        End If
        Delay 1000
        FindPic 242,222,905,638,"C:\yhzr\狂潮\avatar.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            If 小号 = 1 Then 
                MoveTo 1522,430
                LeftClick 1
                Delay 3000
            End If
            Delay 1000
            MoveTo 529,468
            LeftClick 1
            Call 打怪挂机
        End If
    Wend
End Sub
Sub 打怪挂机
    TracePrint "打怪挂机"
    FindPic 825,48,1195,305,"C:\yhzr\狂潮\红旗.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        // 复活
        MoveTo 665, 711
        LeftClick 1
        // 立即刷怪
        TracePrint "立即刷怪"
        MoveTo 1108, 242
        LeftClick 2
        Delay 666
        MoveTo 1108, 242
        LeftClick 2
        // 游走
        TracePrint "游走平A"
        MoveTo 1113,649
        KeyPress "A", 1
        LeftClick 1
        KeyPress "R", 1
        MoveTo 1113,649
        
        Delay 7000      
        MoveTo 1095,647
        KeyPress "A", 1
        LeftClick 1
        KeyPress "W", 1
        MoveTo 1095,647
        
        Delay 7000
        MoveTo 1112,668
        KeyPress "A", 1
        LeftClick 1
        KeyPress "E", 1
        MoveTo 1095,647
        
        Delay 7000
        MoveTo 1094,668
        KeyPress "A", 1
        LeftClick 1
        KeyPress "E", 1
        MoveTo 1094,668
    End If
    Call 放弃领奖
End Sub
Sub 放弃领奖
    TracePrint "放弃领奖"
    FindPic 264,576,990,721,"C:\yhzr\狂潮\放弃领取.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        If 小号 = 1 Then 
            MoveTo 1684,683 
            LeftClick 1
            Delay 3000
        End If  
        MoveTo intX, intY
        LeftClick 1
        Delay 5000
        TracePrint "新一轮开始"
        开始匹配
        //   LeftClick 728, 685
    End If
    TracePrint "没有找到放弃领奖，继续打怪挂机"
    Delay 3000
    Call 打怪挂机
End Sub

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
MacroID=cdadd583-9da6-41c1-a0e4-ddbabee88f1f
Description=狂潮单人
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
小号 = 0
Dim 没找到放弃奖励次数
没找到放弃奖励次数 = 0

Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")//获取窗口句柄
Call Plugin.Window.Move(Hwnd, 0, 0)//将句柄Hwnd的窗口移动到x,y
Plugin.Window.SetClientSize Hwnd, 1200, 750//将句柄为Hwnd的窗口拉伸x,y
Delay 2000


开始匹配
Sub 开始匹配
    TracePrint "开始匹配"
    If 小号 = 1 Then 
        Delay 3000
        // 退出教程
        MoveTo 1851,686 
        LeftClick 1
        Delay 1500
        // 准备
        MoveTo 1625,529
        LeftClick 1
        Delay 1500
    End If
    FindPic 527,549,1097,721,"C:\yhzr\狂潮\开始匹配230901.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        LeftClick 1
        Delay 1500
        Call 接受匹配
    End If
End Sub
Sub 接受匹配
    TracePrint "接受匹配"
    While True
        Delay 1000
        FindPic 242,222,905,638,"C:\yhzr\狂潮\接受240113.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            If 小号 = 1 Then 
                TracePrint "小号 接受匹配"
                MoveTo 1522,428
                LeftClick 1
                Delay 2000
            End If
            TracePrint "大号 接受匹配"
            Delay 1000
            MoveTo 530,439
            LeftClick 1
            Call 打怪挂机
        End If
        Delay 1000
        FindPic 242,222,905,638,"C:\yhzr\狂潮\avatar230901.bmp",0.9,intX,intY
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
        MoveTo 1097,677 
        KeyPress "A", 1
        LeftClick 1
        KeyPress "F", 1
 
        Delay 3000      
        MoveTo 1097,652   
        KeyPress "A", 1
        LeftClick 1
        KeyPress "F", 1
        
        
        // 立即刷怪
        TracePrint "立即刷怪"
        MoveTo 1108, 242
        LeftClick 2
        Delay 666
        MoveTo 1108, 242
        LeftClick 2

        Delay 3000
        MoveTo 1120,675
        KeyPress "A", 1
        LeftClick 1
        KeyPress "F", 1
        
        
        Delay 3000
        MoveTo 1116,655 
        KeyPress "A", 1
        LeftClick 1
        KeyPress "F", 1
        
        // 立即刷怪
        TracePrint "立即刷怪"
        MoveTo 1108, 242
        LeftClick 2
        Delay 666
        MoveTo 1108, 242
        LeftClick 2
        
        // 定位地图 提高FPS
        MoveTo 1111,717 
        LeftClick 2
    End If
    
    If 没找到放弃奖励次数 > 20 Then 
        TracePrint "没找到放弃奖励次数过多" & 没找到放弃奖励次数
        没找到放弃奖励次数 = 0
        开始匹配
    End If
    
    
    
    Call 放弃领奖
End Sub
Sub 放弃领奖
    TracePrint "放弃领奖"
    Delay 5000
    FindPic 264,576,990,721,"C:\yhzr\狂潮\放弃领取.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        If 小号 = 1 Then 
            MoveTo 1686,683 
            LeftClick 1
            Delay 3000
        End If  
        MoveTo intX, intY
        LeftClick 1
        Delay 20000
        TracePrint "新一轮开始"
        没找到放弃奖励次数 = 0
        开始匹配
        //   LeftClick 728, 685
    End If
    TracePrint "没有找到放弃领奖，继续打怪挂机" & 没找到放弃奖励次数
    没找到放弃奖励次数 = 没找到放弃奖励次数 + 1
    Delay 5000
    Call 打怪挂机
End Sub

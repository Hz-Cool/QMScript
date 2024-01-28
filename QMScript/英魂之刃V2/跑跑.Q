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
MacroID=2e9f3da8-fa93-4965-b2ba-90d2c13628e8
Description=跑跑
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


Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")//获取窗口句柄
Call Plugin.Window.Move(Hwnd, 0, 0)//将句柄Hwnd的窗口移动到x,y
Plugin.Window.SetClientSize Hwnd, 1200, 750//将句柄为Hwnd的窗口拉伸x,y

Delay 500

开始

Sub 开始
    Delay 2000
    TracePrint "开始"
    While True
        FindPic 405,349,957,579,"C:\yhzr\跑跑\play.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            LeftClick 2
            Call 接受匹配
        End If
    Wend
End Sub


Sub 接受匹配
    Delay 2000
    TracePrint "接受匹配"
    i=40
    While i <> 0
        TracePrint "接受匹配 倒计时" & i
        i = i - 1
        FindPic 351,266,840,570,"C:\yhzr\跑跑\accept.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            LeftClick 2
            Call 寻找皮肤
        End If
        Delay 1000
    Wend
    Call 开始
End Sub

// 寻找皮肤

Sub 寻找皮肤
    Delay 2000
    TracePrint "寻找皮肤"
    i=40
    While i <> 0
        TracePrint "寻找皮肤 倒计时" & i
        i = i - 1
        FindPic 280,256,949,670,"C:\yhzr\跑跑\皮肤.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
        	TracePrint "选择英雄"
        	
        	
        	Delay 3000
            MoveTo 547,605
            LeftClick 2
            Delay 1000
            MoveTo 792,722
            LeftClick 2
        
            Call 进入游戏
        End If
        Delay 1000
    Wend
    Call 开始
End Sub

// 进入游戏

Sub 进入游戏
    Delay 2000
    TracePrint "进入游戏"
    i=60
    While i <> 0
        TracePrint "进入游戏 倒计时" & i
        i = i - 1
        FindPic 945,522,1060,733,"C:\yhzr\跑跑\旗帜.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            Call 第一点位
        End If
        Delay 1000
    Wend
    Call 开始
End Sub


Sub 第一点位
    Delay 1000
    TracePrint "第一点位"

    i=38
    While i <> 0
        TracePrint "第一点位 倒计时" & i
        i = i - 1
        MoveTo 1163,601
        RightClick 2
        Delay 1000
    Wend
 
    Call 第二点位
End Sub

Sub 第二点位
    Delay 1000
    TracePrint "第二点位"

    i=25
    While i <> 0
        TracePrint "第二点位 倒计时" & i
        i = i - 1
        MoveTo 1168,725
        RightClick 2
        Delay 1000
    Wend
    
    Call 第三点位
End Sub

Sub 第三点位
    Delay 1000
    TracePrint "第三点位"

    i=35
    While i <> 0
        TracePrint "第三点位 倒计时" & i
        i = i - 1
        MoveTo 1068,683
        RightClick 2
        Delay 1000
    Wend
    
    Call 第四点位
End Sub

Sub 第四点位
    Delay 1000
    TracePrint "第四点位"

    i=15
    While i <> 0
        TracePrint "第四点位 倒计时" & i
        i = i - 1
        MoveTo 1118,696
        RightClick 2
        Delay 1000
    Wend
    
    Call 第五点位
End Sub

Sub 第五点位
    Delay 1000
    TracePrint "第五点位"

    i=15
    While i <> 0
        TracePrint "第五点位 倒计时" & i
        i = i - 1
        MoveTo 1134,639
        RightClick 2
        Delay 1000
    Wend
    
    Call 第六点位
End Sub



Sub 第六点位
    Delay 1000
    TracePrint "第六点位"

    i=30
    While i <> 0
        TracePrint "第六点位 倒计时" & i
        i = i - 1
        MoveTo 1042,600
        RightClick 2
        Delay 1000
    Wend
    
    Call 退出
End Sub



Sub 退出
    Delay 2000
    TracePrint "退出"
    While True
        FindPic 822,552,1197,749,"C:\yhzr\跑跑\back.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX,intY
            LeftClick 2
            Call 开始
        End If
        FindPic 685,218,1188,738,"C:\yhzr\跑跑\first.bmp",0.8,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 1052,708
            LeftClick 2
            Call 开始
        End If
    Wend
End Sub







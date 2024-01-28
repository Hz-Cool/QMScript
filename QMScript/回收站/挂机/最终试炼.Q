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
MacroID=06f17d07-2d4c-4192-b69b-fd8a5ef21623
Description=最终试炼
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

Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")//获取窗口句柄
Call Plugin.Window.Move(Hwnd, 0, 0)//将句柄Hwnd的窗口移动到x,y
Plugin.Window.SetClientSize Hwnd, 1200, 750//将句柄为Hwnd的窗口拉伸x,y

Delay 1000


开始匹配 

Sub 开始匹配
    TracePrint "开始匹配"
    While True
        FindPic 540,575,1140,706,"C:\yhzr\最终试炼\开始匹配.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            LeftClick 1
            Delay 1000
            准备确定
        End If
        FindPic 540,575,1140,706,"C:\yhzr\最终试炼\准备.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            LeftClick 1
            Delay 1000
            准备确定
        End If
    Wend
End Sub

Sub 准备确定
    TracePrint "准备确定"
    While True
        FindPic 395,263,789,477,"C:\yhzr\最终试炼\准备确定.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            LeftClick 1
            Delay 1000
            开始匹配
        Else 
        	点击匹配成功
        End If
    Wend
End Sub




Sub 点击匹配成功
    TracePrint "点击匹配成功"
    While True
        FindPic 263,235,984,622,"C:\yhzr\最终试炼\接受匹配.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 523, 454
            LeftClick 2
            Delay 2000
            进入地图内
        End If
        FindPic 263,235,984,622,"C:\yhzr\最终试炼\匹配成功.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo 523, 454
            LeftClick 2
            Delay 2000
            进入地图内
        End If
        Delay 1000
        MoveTo 593,433
        LeftClick 1
    Wend
End Sub

Sub 进入地图内

    FindPic 364,12,860,155,"C:\yhzr\最终试炼\雅典娜.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
        TracePrint "进入地图内"
        自动打怪 
        Delay 1000
        循环立即刷怪 
        Delay 1000
        递归
    Else 
        放弃领取
    End If
End Sub


Sub 递归
    TracePrint "递归"
    进入地图内 
    Delay 200
End Sub

Sub 放弃领取
    FindPic 319,559,894,727,"C:\yhzr\最终试炼\放弃领取.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
        TracePrint "放弃领取"
        MoveTo intX, intY
        LeftClick 2
        Delay 2000
        开始匹配 
    Else 
        进入地图内 
        Delay 200
    End If

End Sub

Sub 循环立即刷怪
    TracePrint "循环立即刷怪"
    MoveTo 1116,242 
    LeftClick 1
//    Delay 1000
//    LeftClick 3
End Sub

Sub 自动打怪
    TracePrint "自动打怪"
    MoveTo 1116,642
    KeyPress "A", 1
    LeftClick 1
    Delay 5000
    //
    MoveTo 1088,644
    KeyPress "A", 1
    LeftClick 1
    Delay 5000
    //
    MoveTo 1088,671
    KeyPress "A", 1
    LeftClick 1
    Delay 5000
    //
    MoveTo 1118,670
    KeyPress "A", 1
    LeftClick 1
    Delay 5000
End Sub

Sub 循环放技能
    KeyDown "Q", 1
    LeftClick 2
    Delay 1000
    //
    KeyDown "W", 1
    LeftClick 2
    Delay 1000
    //
    KeyDown "F", 1
    LeftClick 2
    Delay 1000
End Sub

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
MacroID=53d2e7f4-50e9-43a7-a652-9cea23fcd65a
Description=熊4
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[Script]

Delay 1000

Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")//获取窗口句柄
Call Plugin.Window.Move(Hwnd, 0, 0)//将句柄Hwnd的窗口移动到x,y
Plugin.Window.SetClientSize Hwnd, 1200, 750//将句柄为Hwnd的窗口拉伸x,y

Dim BOSS
BOSS = 1

单人挑战

Sub 单人挑战
    While True
        FindPic 592,536,1145,677,"C:\yhzr\熊4\单人挑战.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            LeftClick 3
            Delay 25000
            Call 进入BOSS1
        Else 
            MoveTo 650, 443
            LeftClick 10
        End If
    Wend
End Sub

Sub 进入BOSS1
    MoveTo 1112, 698
    KeyPress "A", 1
    LeftClick 1
    Delay 3000
    Call 打开宝箱
End Sub

Sub 打开宝箱
    While True
        FindPic 252,314,938,707,"C:\yhzr\熊4\打开宝箱.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            LeftClick 1
            BOSS = BOSS+1
            Delay 3000
            Call 稍后抽取
        Else 
            If BOSS = 1 Then 
                进入BOSS1
            End If
        
        End If
    Wend
End Sub

Sub 稍后抽取
    FindPic 183,475,580,695,"C:\yhzr\熊4\稍后抽取.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        LeftClick 1
        Delay 3000
        If BOSS = 2 Then 
            BOSS2区域1
        End If
        If BOSS = 3 Then 
            进入BOSS3
        End If
        If BOSS = 4 Then 
            退出副本
        End If
    End If
End Sub


Sub BOSS2区域1
    MoveTo 1136, 728
    RightClick 2
    Delay 15000
    Call BOSS2区域2
End Sub

Sub BOSS2区域2
    MoveTo 1176,699
    RightClick 2
    Delay 25000
    Call 进入BOSS2
End Sub

Sub 进入BOSS2
    While True
        MoveTo 1156, 678
        KeyPress "A", 1
        LeftClick 1
        Delay 1000
        Call 打开宝箱
    Wend
End Sub

Sub 进入BOSS3
    MoveTo 1094, 647
    KeyPress "A", 1
    LeftClick 1
    Delay 25000
End Sub


Sub 退出副本
    FindPic 431,374,768,514,"C:\yhzr\熊4\退出副本.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        LeftClick 1
        Delay 5000
        BOSS = 1
        Call 单人挑战
    End If
End Sub

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
MacroID=b9638860-aab4-49e3-8814-20ad344a7173
Description=女神普通
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
Delay 2000
单人挑战 
const单人挑战 = 0
Sub 单人挑战
    While True
        TracePrint "单人挑战" & const单人挑战
        FindPic 689,512,1158,719, "C:\yhzr\女神\单人挑战.bmp", 0.7, intX, intY
        If intX > 0 And intY > 0 Then 
            TracePrint "单人挑战 下一关"
            MoveTo intX, intY
            LeftClick 3
            Delay 2000 
            Call 进入BOSS
        Else 
            MoveTo 650, 443
            LeftClick 10
        End If
    Wend
    Delay 5000
    const单人挑战 = const单人挑战 + 1
    If const单人挑战 > 18 Then 
        TracePrint "单人挑战 > 15"
        Call 进入BOSS
    End If
End Sub
const进入BOSS = 0
const进入BOSSClick = 0
Sub 进入BOSS
    While True
        TracePrint "进入BOSS" & const进入BOSS
        TracePrint "进入BOSS" & const进入BOSSClick
        FindPic 240,433,1001,730,"C:\yhzr\女神\esc.bmp",0.7,intX,intY
		If intX > 0 And intY > 0 Then 
			 KeyPress "Esc", 1
		End If
        FindPic 968,588,1184,740,"C:\yhzr\女神\小旗.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            TracePrint "进入BOSS 打怪"
            Delay 2000
            MoveTo 1100,654
            KeyPress "A", 1
            LeftClick 1
            const进入BOSSClick = const进入BOSSClick + 1
            If const进入BOSSClick > 5 Then 
                TracePrint "const进入BOSSClick > 3"
                Call 打开宝箱
            End If
        End If
        Delay 1000
        const进入BOSS = const进入BOSS + 1
        If const进入BOSS > 75 Then 
            TracePrint "进入BOSS > 15"
            Call 打开宝箱
        End If
    Wend
End Sub
Sub 打开宝箱
    While True
        Delay 2000
        FindPic 252,314,938,707,"C:\yhzr\熊4\打开宝箱.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            LeftClick 1
            Delay 1000
            Call 稍后抽取
        End If
    Wend
End Sub
Sub 稍后抽取
    FindPic 183,475,580,695,"C:\yhzr\熊4\稍后抽取.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        LeftClick 1
        Delay 3000
        退出副本
    End If
End Sub
Sub 退出副本
    FindPic 431,374,768,514,"C:\yhzr\熊4\退出副本.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        LeftClick 1
        Delay 5000
        BOSS = 1
        const单人挑战 = 0
        const进入BOSS = 0
        const进入BOSS = 0
        const进入BOSSClick = 0
        Call 单人挑战        
    End If
End Sub

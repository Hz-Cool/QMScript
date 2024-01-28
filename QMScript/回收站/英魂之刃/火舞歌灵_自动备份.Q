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
MacroID=a1d6fdac-4799-4df9-9dfe-2760f80033fe
Description=火舞歌灵_自动备份
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
Dim pos
// 上0  下1
pos = 1
Delay 2000
// 开始匹配
FindPic 583,347,809,523,"C:\Users\Administrator\Desktop\AJJL\juexing\start.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    showText ("开始匹配")
    MoveTo intX, intY
    LeftClick 2
    Delay 2000
End If
// 打开全部
MoveTo 679, 507
Delay 2000
LeftClick 1
// 找到火舞歌灵
FindPic 0,0,1366,768,"C:\Users\Administrator\Desktop\AJJL\juexing\hwgl.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    showText ("找火舞歌灵")
    MoveTo intX, intY
    LeftClick 2
    Delay 2000
    // 确认选择
    MoveTo 866, 711
    LeftClick 1
End If
Delay 2000
showText ("技能R +点 释放")
// 技能R +点 释放
MoveTo 680, 648
LeftClick 1
KeyPress "R", 1
// 位置判断
FindPic 754,14,1314,521,"C:\Users\Administrator\Desktop\AJJL\juexing\shang.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    pos =0
End If
showText ("上部分 来回走动")
MoveTo 732,356
RightClick 1
LeftClick 1
Delay 50
MoveTo 548,475
RightClick 1
LeftClick 1
MoveTo 732,356
RightClick 1
LeftClick 1
showText ("加前三技能点")
// 进入游戏中 加前三技能点
FindPic 391,615,712,733,"C:\Users\Administrator\Desktop\AJJL\juexing\avater.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    num = Lib.算法.随机数字串(1)
    If num > 7 Then  
        MoveTo 549, 648
        LeftClick 1
        Delay 1000
        MoveTo 662, 648
        LeftClick 1
        Delay 1000
        MoveTo 650, 648
        LeftClick 1
        Delay 1000
    End If
End If
FindPic 494,314,946,550,"C:\Users\Administrator\Desktop\AJJL\juexing\yes.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    showText ("点击挂机提示")
    // 点击挂机提示
    MoveTo 678, 429
    LeftClick 2
End If
Function showText(text)
    Call Plugin.Msg.ShowScrTXT(0, 0, 200, 200, text, "0000FF")
End Function
//投降
FindPic 0,0,1366,768,"C:\yhzr\投降.bmp",0.9,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo intX, intY
    LeftClick 2
End If

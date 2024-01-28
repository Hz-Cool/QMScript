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
MacroID=5900fc93-83a3-4521-a470-f822e97ebaec
Description=末日预言&女神试炼
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
FindPic 932,557,1088,666,"C:\Users\Administrator\Desktop\AJJL\t0\play.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo 1024, 628
    LeftClick 2
End If
LeftClick 1
Delay 1000
// 找到了地图，可以下一步
FindPic 1114,599,1268,730,"C:\Users\Administrator\Desktop\AJJL\t0\map.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo intX + 10, intY + 10
    RightClick 2
    MoveTo intX + 10, intY + 10
    LeftClick 2
    KeyPress "R", 1
End If
Delay 1000
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
End If
Delay 1000
// 退出副本
FindPic 509,344,861,541,"C:\Users\Administrator\Desktop\AJJL\t0\exit.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo intX + 10, intY + 10
    LeftClick 2
End If
Delay 1000
// 关闭获得奖励
FindPic 685,416,824,503,"C:\Users\Administrator\Desktop\AJJL\t0\send.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo intX + 10, intY + 10
    LeftClick 2
End If

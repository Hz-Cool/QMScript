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
MacroID=b92a9e5f-b3c7-4b6f-b35d-c209d892b638
Description=我的脚本2
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
Call Plugin.Msg.ShowScrTXT(0, 0, 200, 200, Lib.算法.随机数字串(2), "0000FF")
//FindCenterColor 384,135,1038,578,"F9B2F7",intX,intY
//If intX > 0 And intY > 0 Then 
//	MoveTo intX, intY
//	LeftClick 1
//End If
// 蓝色宝箱
FindPic 429,288,901,599,"C:\Users\Administrator\Desktop\AJJL\新建文件夹\1.bmp",0.3,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo intX, intY
    LeftClick 1
    RightClick 1
    Call Plugin.Msg.ShowScrTXT(0, 0, 200, 200,"找到蓝色", "0000FF")
    Delay 2000
End If
// 紫色宝箱
FindPic 386,197,978,647,"C:\Users\Administrator\Desktop\AJJL\新建文件夹\2.bmp",0.3,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo intX, intY
    LeftClick 1
    RightClick 1
    Call Plugin.Msg.ShowScrTXT(0, 0, 200, 200,"找到紫色", "0000FF")
    Delay 2000
End If
Delay 1000

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
MacroID=32ce076d-72dd-4788-b2ae-d4b9029b2f0c
Description=自走棋
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
Delay 2000
FindPic 671,414,948,518,"C:\Users\Administrator\Desktop\AJJL\zizouqi\play.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    // 开始
    MoveTo 790,474
    LeftClick 1
    Delay 1000
    // 领币1
    MoveTo 567,495
    LeftClick 1
    Delay 1000
    // 领币2
    MoveTo 670,436
    LeftClick 1
    Delay 1000
    // 领币3
    LeftClick 1
End If
Delay 8000
FindPic 101,18,272,97,"C:\Users\Administrator\Desktop\AJJL\zizouqi\but.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    // 退出
    KeyPress "Esc", 1
    Delay 2000
    MoveTo 693,448
    LeftClick 1
    Delay 1000
    // 确认退出
    MoveTo 612,434
    LeftClick 1
    Delay 1000
    // 返回
    MoveTo 1124,714
    LeftClick 1
    Delay 1000
End If
    // 返回
    MoveTo 1124,714
    LeftClick 1
    Delay 1000

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
MacroID=f1bbcf8f-c2fd-4780-b99f-f86a8b3365be
Description=自动点叉
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
While True
	FindPic 723,306,737,321,"C:\haha\分解叉.bmp",0.7,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX,intY
		LeftClick 1
	End If
	
	FindPic 812,262,829,281,"C:\haha\稀有物品叉.bmp",0.7,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX,intY
		LeftClick 1
	End If
	
	FindPic 813,264,831,281,"C:\haha\分解失败叉.bmp",0.7,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX,intY
		LeftClick 1
	End If
	
	Delay 200
Wend

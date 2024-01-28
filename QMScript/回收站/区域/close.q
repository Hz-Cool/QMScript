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
MacroID=b76de755-b94a-41d5-96aa-d7b82cdb50b1
Description=close
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
	FindPic 725,308, 736,320,"C:\hehe\分解叉.bmp",0.6,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	
	FindPic 762,292,773,305,"C:\hehe\分解失败叉.bmp",0.6,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	
	FindPic 898,721, 392,137,"C:\hehe\稀有物品叉.bmp",0.6,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	
	FindPic 1025,138,1035,150,"C:\hehe\BOSS宝箱叉.bmp",0.6,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	Delay 10
Wend

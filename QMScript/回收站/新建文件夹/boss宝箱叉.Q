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
MacroID=0a522dd5-bb6f-46f4-98f2-3dc57dd13f10
Description=boss±¦Ïä²æ
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
	FindPic 1025,138,1035,150,"C:\hehe\BOSS±¦Ïä²æ.bmp",0.5,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	Delay 3000
Wend
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
MacroID=15ee88e5-5418-4121-b04a-17daac594e54
Description=¼ñÏä×Ó
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
	FindColorEx 337,137,999,642,"32B9C4",0,0.9,intX1,intY1
	If intX1 > 0 And intY1 > 0 Then 
		FindColorEx intX1-7,intY-7,intX1+7,intY1+7,"6A5A54",0,0.9,intX2,intY2
		If intX2 > 0 And intY2 > 0 Then 
			FindColorEx intX1-7,intY-7,intX1+7,intY1+7,"2D3D69",0,0.9,intX3,intY3
			If intX3 > 0 And intY3 > 0 Then 
				MoveTo intX1, intY1
				KeyPress"3",1
				RightClick 1
			End If
		End If

	End If

Wend

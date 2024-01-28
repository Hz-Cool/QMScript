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
MacroID=70a7cfef-b8d8-4cfd-a224-6c6b16ce3c60
Description=×ó°ëÍ¼
Enable=0
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
Sub first
	While True
		FindColor 1083,117,1085,119,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1078,124 
		  	KeyPress "A",1
			LeftClick 1
			Delay   500
		Else 
			call second
		End If
	Wend
End Sub



Sub second
	While True
		FindColor 1095,98,1097,100,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1091,108
		  	KeyPress "A",1
			LeftClick 1
			Delay   500
		Else 
			call third
		End If
	Wend
End Sub


Sub third
	While True
		FindColor 1121,68,1123,70,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1116,76
		  	KeyPress "A", 1
			LeftClick 1
			Delay   500
		Else 
			call fourth
		End If
	Wend
End Sub

Sub fourth
	While True
		FindColor 1106,40,1108,42,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1112,49 
		  	KeyPress "A", 1
			LeftClick 1
			Delay   500
		Else 
			call fifth
		End If
	Wend
End Sub

Sub fifth
	While True
		FindColor 1062,41,1064,43,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1071,48
		  	KeyPress "A", 1
			LeftClick 1
			Delay   500
		Else 
			call sixth
		End If
	Wend
End Sub

Sub sixth
	While True
		FindColor 1066,129,1068,131,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1072,123
		  	KeyPress "A", 1
			LeftClick 1
			Delay   500
		Else 
			call first
		End If
	Wend
End Sub




call first

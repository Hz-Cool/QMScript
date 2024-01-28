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
MacroID=a7b39d9c-23a2-43ed-acb3-3832f0b03268
Description=»ÄÔ­ÖÐÉÏ
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
		FindColor 1091,50,1093,52,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1098,58
		  	KeyPress "A",1
			LeftClick 1
			Delay   800
		Else 
			call second
		End If
	Wend
	
End Sub



Sub second

	While True
		FindColor 1121,45,1123,47,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1114,53
		  	KeyPress "A",1
			LeftClick 1
			Delay   800
		Else 
			call third
		End If
	Wend
	
End Sub


Sub third

	While True
		FindColor 1111,83,1113,85,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1118,77
		  	KeyPress "A", 1
			LeftClick 1
			Delay   800
		Else 
			call fourth
		End If
	Wend
	
End Sub

Sub fourth

	While True
		FindColor 1097,68,1099,70,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1106,74
		  	KeyPress "A", 1
			LeftClick 1
			Delay   800
		Else 
			call first
		End If
	Wend
	
End Sub


call first

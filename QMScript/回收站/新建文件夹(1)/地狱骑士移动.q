[General]
SyntaxVersion=2
BeginHotkey=57
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=48
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=1fb92758-2e16-4f85-9052-3f33cbe09456
Description=µÿ”¸∆Ô ø“∆∂Ø
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
		FindColor 1162,82,1164,84,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1168,92
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call second
		End If
	Wend
	
End Sub



Sub second

	While True
		FindColor 1129,39,1131,41,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1136,46
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call third
		End If
	Wend
	
End Sub


Sub third

	While True
		FindColor 1106,52,1108,54,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1113,60
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call forth
		End If
	Wend
	
End Sub


Sub forth

	While True
		FindColor 1108,85,1110,87,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1116,80
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call fifth
		End If
	Wend
	
End Sub


Sub fifth

	While True
		FindColor 1148,91,1152,95,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1144,100
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call first
		End If
	Wend
	
End Sub


Call first


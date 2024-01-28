[General]
SyntaxVersion=2
BeginHotkey=56
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=57
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=e7b75653-eb14-49a9-b7a4-f7dcddf8616d
Description=π∑–‹“∆∂Ø
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
		FindColor 1137,155,1139,157,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1146,150
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
		FindColor 1179,143,1181,145,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1174,151
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
		FindColor 1172,104,1175,106,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1168,113
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
		FindColor 1138,128,1140,130,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1145,123
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call first
		End If
	Wend
	
End Sub
 


call first

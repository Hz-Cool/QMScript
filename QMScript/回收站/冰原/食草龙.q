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
MacroID=00406f6d-aa8b-43ee-8b11-1fee92ac67f0
Description=ʳ����
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
		FindColor 1117,122,1119,124,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1126,129
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call m1
		End If
	Wend
	
End Sub


Sub m1

	While True
		FindColor 1146,119,1148,121,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1142,128
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
		FindColor 1113,161,1115,163,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1121,156
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
		FindColor 1092,124,1094,126,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1099,132
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
		FindColor 1061,131,1063,133,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1068,139
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call first
		End If
	Wend
	
End Sub
 


Call first


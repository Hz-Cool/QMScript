[General]
SyntaxVersion=2
BeginHotkey=54
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=55
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=c912d4dc-1bfb-4ead-a5a9-7858202271f0
Description=Ԫ���ػ���
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
		FindColor 1102,99,1104,101,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1110,94
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
		FindColor 1110,72,1112,74,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1106,81
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
		FindColor 1092,45,1094,47,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1100,53
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call forth
		End If
	Wend
	
End Sub


Sub forth
MoveTo 1080, 55
RightClick 1
	While True
		FindColor 1073,47,1075,49,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1080,55
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call first
		End If
	Wend
	
End Sub
 


call first

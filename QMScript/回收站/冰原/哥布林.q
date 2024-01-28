[General]
SyntaxVersion=2
BeginHotkey=55
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=56
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=80c6aa7a-6309-42f1-967a-e8106827b734
Description=∏Á≤º¡÷
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
		FindColor 1150,36,1152,38,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1155,46
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
		FindColor 1147,69,1149,71,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1156,65
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
		FindColor 1160,88,1162,90,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1167,82
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
		FindColor 1161,58,1163,60,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1157,66
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call first
		End If
	Wend
	
End Sub
 


call first

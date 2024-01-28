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
MacroID=8ebd7070-9b70-4f95-9758-e2c484821670
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
		FindColor 1145,37,1147,39,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1152,47
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
			call fourth
		End If
	Wend
	
End Sub


/*Sub third

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
*/

Sub fourth
MoveTo 1080, 55
RightClick 1
	While True
		FindColor 1182,52,1184,54,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1177,60
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call first
		End If
	Wend
	
End Sub
 


call first

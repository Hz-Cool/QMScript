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
MacroID=cba64908-af8c-43ca-bae5-4ee585412cb6
Description=Ë®ÔªËØÒÆ¶¯
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
		FindColor 1097,104,1099,106,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1105, 99
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
		FindColor 1074,122,1076,124,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1082, 117
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
		FindColor 1060,111,1062,113,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1068, 119
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
		FindColor 1062,39,1064,41,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1070, 47
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call first
		End If
	Wend
	
End Sub
 


call first

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
MacroID=c5967c39-3163-43a9-a291-65f07184419a
Description=豺狼移动_自动备份
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
		FindColor 1109,159,1111,161,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1116,155
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
		FindColor 1626,129,1128,131,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1123,138
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
		FindColor 1098,106,1100,108,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1106,114
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
		FindColor 1136,115,1138,117,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1131,122
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call first
		End If
	Wend
	
End Sub
 


call first

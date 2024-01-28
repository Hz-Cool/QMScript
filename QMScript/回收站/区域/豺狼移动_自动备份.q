[General]
SyntaxVersion=2
BeginHotkey=65
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=66
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=826dfea1-b746-41fc-bf29-4c8fa1ade449
Description=豺狼移动_自动备份
Enable=1
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
		FindColor 1114,160,1116,162,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1120, 154
		  	   
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
		FindColor 1093,154,1095,156,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1101, 149
		  	  
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
		FindColor 1108,126,1110,127,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1114, 136
		  	  
		  	KeyPress "A", 1
			LeftClick 1
			Delay   800
		Else 
			call first
		End If
	Wend
	
End Sub




call first

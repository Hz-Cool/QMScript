[General]
SyntaxVersion=2
BeginHotkey=66
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=65
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=6e4a7d45-e002-4738-a988-63c9dacb0210
Description=ˮԪ��СȦ
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
		FindColor 1078,61,1080,63,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1085,69
		  	   
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
		FindColor 1066,107,1068,109,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1074,103
		  	  
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
		FindColor 1096,83,1098,85,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1090,89
		  	  
		  	KeyPress "A", 1
			LeftClick 1
			Delay   800
		Else 
			call first
		End If
	Wend
	
End Sub




call first

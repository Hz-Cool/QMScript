[General]
SyntaxVersion=2
BeginHotkey=48
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=54
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=8df17c6e-70cd-4f97-8ea7-856b88f63c96
Description=¹Ì¶¨boss
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
		FindColor 1159,55,1163,59,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1154,63
			KeyPress "A",1
			LeftClick 1
			Delay 800
		Else 
			call second
		End If
	Wend
	
End Sub

Sub second
	While true
		MoveTo 1133, 68
		KeyPress "A", 1
		LeftClick 1
		Delay 200
	Wend
End Sub
Call first

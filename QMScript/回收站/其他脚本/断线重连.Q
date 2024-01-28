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
MacroID=31d26bc5-6df4-48ce-8978-3682cb8cd236
Description=断线重连
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
		FindPic 586,429,618,446,"C:\hehe\断线重连.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 1
			Call second
		End If
	Wend
End Sub

Sub second
	
End Sub

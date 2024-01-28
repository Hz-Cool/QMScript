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
MacroID=69d8b9b6-007e-4988-a7c3-e0c052f60121
Description=Ãë¸´»î
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
While true
	
	FindColorEx 663,348,731,402,"CB9310",0,0.9,intX,intY
	If intX > 0 And intY > 0 Then 
	MoveTo intX, intY
	LeftClick 1
	End If
	
	FindPic 0,0,1024,768,"C:\hehe\ÉñÐÐ.bmp",0.6z,intX,intY
	If intX > 0 And intY > 0 Then
	End If

	Delay 1000

Wend

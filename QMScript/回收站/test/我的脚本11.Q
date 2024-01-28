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
MacroID=dae5d2ff-8b7a-4a4c-958f-aa2be3932fa1
Description=技能（杂七杂八）
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
While True

	//释放二技能
	KeyPress "W", 1
	
	//捕杀
	/*
	FindPic 338,138,999,642,"C:\hehe\捕杀.bmp",0.9,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX + 40, intY + 90
		KeyPress "Q", 1
		KeyPress "3", 1
		KeyPress "W", 1
		RightClick 1
	End If
		
	
	KeyDown "alt", 1
	KeyPress "3", 1
	KeyUp "alt",1
	*/
	Delay 200
	
Wend

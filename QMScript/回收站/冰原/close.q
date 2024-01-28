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
MacroID=579fb3b7-a2e8-4180-9d47-200e7d51f1cb
Description=close
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
While True
	FindPic 752,296,761,307,"C:\hehe\Ï¡ÓÐÎïÆ·²æ.bmp",0.5,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	
	FindPic 720,306  ,736,321,"C:\hehe\·Ö½âÊ§°Ü²æ.bmp",0.5,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	
	FindPic 723,307, 735,321,"C:\hehe\·Ö½â²æ.bmp",0.5,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	
	FindPic 734,186,741,194,"C:\hehe\¶ñÄ§¼ÀÌ³²æ.bmp",0.5,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	
	FindPic 746,258,756,271,"C:\hehe\¶ÓÎéÑûÇë²æ.bmp",0.5,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	
	FindPic 771,241,780,252,"C:\hehe\ºÃÓÑÇëÇó²æ.bmp",0.5,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX, intY
		LeftClick 1
	End If
	Delay 10
Wend

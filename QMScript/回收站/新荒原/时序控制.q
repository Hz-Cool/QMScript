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
MacroID=7b70f394-faaa-4998-b04b-114da43f1b3a
Description=Ê±Ðò¿ØÖÆ
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
	m = minute(Now)
	h = hour(Now)
	If m < 3 Then 
		If h Mod 2 = 1
			KeyPress "0", 1
		Else 
			KeyPress "0", 10
			KeyPress "6", 1
			Delay 60*1000*3
		End If
	ElseIf m < 16 Then
		KeyPress "6",1
	ElseIf m < 31 Then
		KeyPress "7",1
	ElseIf m < 46 Then
		KeyPress "8", 1
	ElseIf m < 59 Then
		KeyPress "9", 1
	ElseIf m < 60 Then
		If h Mod 2 = 1
			KeyPress "9", 1
		Else 
			KeyPress "0", 1
		End If
	End If
	Delay 1000

Wend

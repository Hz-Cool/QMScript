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
MacroID=1bce7fc2-bd97-4333-83c2-904cb91ef726
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
Dim time
While True	
	time = Minute(Now)
	If time < 16 Then 
		KeyPress "6",1
	ElseIf time < 31 Then
		KeyPress "7",1
	ElseIf time < 46 Then
		KeyPress "8",1
	ElseIf time < 60 Then
		KeyPress "9",1
	End If
	KeyPress "Q", 1
	Delay 100
Wend

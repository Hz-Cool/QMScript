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
MacroID=2dd055b6-f8ca-4951-96c3-6d81d8d9295d
Description=ʱ�����
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
Dim m
While True
	m = Minute(Now)
	If m <16 Then //����
		KeyPress "6",1
	ElseIf m < 31 Then//ˮԪ��
		KeyPress "7",1
	ElseIf m <46 Then//����
		KeyPress "8",1
	ElseIf m <60 Then//������ʿ
		KeyPress "9",1
	End If
	Delay 200
	KeyDown "W",1
Wend

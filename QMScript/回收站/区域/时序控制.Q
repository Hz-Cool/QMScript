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
MacroID=2dcec73e-1e2d-4ea5-8928-ca73cd8e07e5
Description=ʱ�����
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
Dim m
While True
	m = Minute(now)
	If m > 0 Then //����
	
	ElseIf m > 15 Then//ˮԪ��
	
	ElseIf m > 30 Then//����
	
	ElseIf m > 45 Then//������ʿ
		
	End If
Wend

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
MacroID=b74dc1af-cb18-4075-a6cb-8c849f40d6f5
Description=�ֽ�(��)
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
Sub beibao
  	Delay 1000*30
	While True
		FindPic 778,590,804,602,"C:\hehe\������.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			Call ��װ��
		Else 
			FindPic 837,684,978,733,"C:\hehe\����.bmp",0.5,intX,intY
			If intX > 0 And intY > 0 Then 
				MoveTo intX,intY
				LeftClick 1
				Delay 1000
			End If
		End If
	Wend
End Sub



Sub ��װ��
	While True
		MoveTo 367,130
		FindPic 372,196,826,538,"C:\hehe\��װ��.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call ��װ��
		End If
		Delay 300
	Wend
End Sub

Sub ��װ��
	While True
		MoveTo 367,130
		FindPic 372,196,826,538,"C:\hehe\��װ��.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call close
		End If
		Delay 300
	Wend
	
End Sub


Sub close
	i=0
	While i<10
		MoveTo 831, 135
		LeftClick 10
		Delay 200
		i = i + 1
	Wend
	While True
		FindPic 837,684,978,733,"C:\hehe\����.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX,intY
			LeftClick 1
			Delay 1000
		Else 
			Call beibao
		End If
	Wend
End Sub

Call beibao

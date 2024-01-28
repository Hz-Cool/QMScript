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
MacroID=26bf93ab-265d-475e-aabc-dbbd4e201d16
Description=分解(慢)
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
Sub beibao
  	Delay 1000*50
	While True
		FindPic 778,590,804,602,"C:\hehe\背包打开.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			Call 紫装备
		Else 
			FindPic 837,684,978,733,"C:\hehe\背包.bmp",0.5,intX,intY
			If intX > 0 And intY > 0 Then 
				MoveTo intX,intY
				LeftClick 1
				Delay 1500
			End If
		End If
	Wend
End Sub



Sub 紫装备
	While True
		MoveTo 367,130
		FindPic 372,196,826,538,"C:\hehe\紫色装备.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call 蓝装备
		End If
		Delay 500
	Wend
End Sub

Sub 蓝装备
	While True
		MoveTo 367,130
		FindPic 372,196,826,538,"C:\hehe\蓝色装备.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call close
		End If
		Delay 500
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
		FindPic 778,589,804,604,"C:\hehe\背包打开.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo 899,723
			LeftClick 1
			Delay 1500
		Else 
			Call beibao
		End If
	Wend
End Sub

Call beibao

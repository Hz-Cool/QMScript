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
MacroID=bcb24f7f-e0cb-49dc-9631-58141c2ae676
Description=冰原分解(慢)
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
  	Delay 1000*40
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
		Delay 300
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
			Call 白剑
		End If
		Delay 300
	Wend
	
End Sub


Sub 白剑
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\白剑.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call 白铠甲
		End If
		Delay 500
	Wend
End Sub

Sub 白铠甲
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\白铠甲.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call 白项链
		End If
		Delay 500
	Wend
End Sub

Sub 白项链
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\白项链.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call 白靴子
		End If
		Delay 500
	Wend
End Sub

Sub 白靴子
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\白靴子.bmp",0.5,intX,intY
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
		LeftClick 1
		Delay 200
		i = i + 1
	Wend
	While True
		FindPic 778,590,804,602,"C:\hehe\背包打开.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo 897,722
			LeftClick 1
			Delay 2000
		Else 
			Call beibao
		End If
	Wend
End Sub

Call beibao

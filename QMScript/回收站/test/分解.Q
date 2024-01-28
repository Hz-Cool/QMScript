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
MacroID=ae8e2025-d2c7-4626-b6ac-9612c8c7ce8b
Description=分解
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
Sub 打开背包
	While True
		FindPic 776,588,805,602,"C:\haha\背包已打开.bmp",0.7,intX,intY
		If intX > 0 And intY > 0 Then 
			Call 分解紫铠甲
		Else 
			MoveTo 879, 724
			LeftClick 1
		End If
		Delay 2000
	Wend
End Sub

Sub 分解紫铠甲
	While True
		FindPic 378,198,819,526,"C:\haha\紫铠甲.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 10
			LeftClick 1
		Else 
			Call 分解紫项链
		End If
		Delay 300
	Wend
End Sub

Sub 分解紫项链
	While True
		FindPic 378,198,819,526,"C:\haha\紫项链.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 10
			LeftClick 1

		Else 
			Call 分解紫武器
		End If
		Delay 300
	Wend
End Sub

Sub 分解紫武器
	While True
		FindPic 378,198,819,526,"C:\haha\紫武器.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 10
			LeftClick 1

		Else 
			Call 分解紫靴子
		End If
		Delay 300
	Wend
End Sub

Sub 分解紫靴子
	While True
		FindPic 378,198,819,526,"C:\haha\紫靴子.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 10
			LeftClick 1

		Else 
			Call 分解蓝铠甲
		End If
		Delay 300
	Wend
End Sub

Sub 分解蓝铠甲
	While True
		FindPic 378,198,819,526,"C:\haha\蓝铠甲.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 10
			LeftClick 1

		Else 
			Call 分解蓝项链
		End If
		Delay 300
	Wend
End Sub

Sub 分解蓝项链
	While True
		FindPic 378,198,819,526,"C:\haha\蓝项链.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 10
			LeftClick 1

		Else 
			Call 分解蓝武器
		End If
		Delay 300
	Wend
End Sub

Sub 分解蓝武器
	While True
		FindPic 378,198,819,526,"C:\haha\蓝武器.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 10
			LeftClick 1

		Else 
			Call 分解蓝靴子
		End If
		Delay 300
	Wend
End Sub

Sub 分解蓝靴子
	While True
		FindPic 378,198,819,526,"C:\haha\蓝靴子.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 10
			LeftClick 1

		Else 
			Call 关闭背包
		End If
		Delay 300
	Wend
End Sub

Sub 关闭背包
	While True
		FindPic 776,588,805,602,"C:\haha\背包已打开.bmp",0.7,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo 879, 724
			LeftClick 1
		Else 
			Delay 40000
			Call 打开背包
		End If
		Delay 2000
	Wend
End Sub




Call 打开背包


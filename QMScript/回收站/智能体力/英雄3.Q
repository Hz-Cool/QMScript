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
MacroID=096ab927-373b-4126-a69a-ddb36be34de1
Description=英雄3
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
Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")//获取窗口句柄
Call Plugin.Window.Move(Hwnd, 0, 0)//将句柄Hwnd的窗口移动到x,y
Plugin.Window.SetClientSize Hwnd, 1200, 750//将句柄为Hwnd的窗口拉伸x,y

Sub first
	While True
		FindPic 1028,634,1059,647,"C:\hehe\单人挑战.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 10
			Call second
		Else 
			MoveTo 650, 443
			LeftClick 10
		End If
	Wend
End Sub
	
Sub second
	While True
		FindPic 1133,64,1149,86,"C:\hehe\关卡详情.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			KeyPress "ESC", 1
			Delay 1200
			Call third
		End If
	Wend
End Sub

Sub third
	Dim i
	i = 0
	While i < 10
		MoveTo 1147,692
		RightClick 1
		i = i + 1
		Delay 400
	Wend
	Call fourth
End Sub

Sub fourth
	While True
		FindPic 571,630 ,606,644,"C:\hehe\打开宝箱.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 10
			Call fifth
		End If
	Wend
End Sub

Sub fifth
	While True
		FindPic 305,626,362,641,"C:\hehe\稍后抽取.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 10
			Call sixth
		End If
	Wend
End Sub

Sub sixth
	While True
		FindColor 1104,729,1108,733,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1112,725
			RightClick 1
			Delay 200
		Else 
			call seventh
		End If
	Wend
End Sub

Sub seventh
	While True
		FindColor 1082,693,1086,697,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1090,702
			RightClick 1
			Delay 200
		Else 
			call ninth
		End If
	Wend
End Sub



Sub ninth
	Dim i
	i = 0
	While i < 5
		MoveTo 1059,645
		RightClick 1
		i=i+1
		Delay 800
	Wend
		call tenth
End Sub

Sub tenth
	While True
		FindPic 571,630 ,606,644,"C:\hehe\打开宝箱.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 10
			Call eleventh
		End If
	Wend
End Sub

Sub eleventh
	While True
		FindPic 305,626,362,641,"C:\hehe\稍后抽取.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 10
			Delay 1000
			Call twelfth
		End If
	Wend
End Sub


Sub twelfth
	While True
		FindPic 569,389,631,408,"C:\hehe\放弃副本.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 5
			Call a
		Else 
			KeyPress "Esc", 1
			Delay 1000
		End If
	Wend
End Sub

Sub a
	While True
		FindPic 526,431,560,447,"C:\hehe\确定放弃.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 5
			Call b
		End If
	Wend
End Sub

Sub a
	Delay 1000
	KeyPress "Esc", 1
	Delay 800
	MoveTo 599,394
	LeftClick 5
	Delay 2000
	MoveTo 514,439
	LeftClick 5
	Delay 2000
	MoveTo 592,616  
	LeftClick 5
		call first
End Sub


Call first

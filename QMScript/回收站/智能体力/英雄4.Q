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
MacroID=afad1d3f-0a79-4ce1-917c-17dd54382e09
Description=英雄4
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
		MoveTo 1077,675
		RightClick 1
		i = i + 1
		Delay 300
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
		FindColor 1116,705,1118,707,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1109,712
			RightClick 1
			Delay 200
		Else 
			call seventh
		End If
	Wend
End Sub

Sub seventh
	While True
		FindColor 1153,685,1157,689,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1149,694
			RightClick 1
			Delay 200
		Else 
			call eighth
		End If
	Wend
End Sub

Sub eighth
	While True
		FindColor 1172,668,1176,672,"FFA210",intX,intY
		If intX <= 0 and intY <= 0 Then 
			MoveTo 1168,676
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
		MoveTo 1140, 645
		RightClick 1
		i=i+1
		Delay 200
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
			Call twelfth
		End If
	Wend
End Sub

Sub twelfth
	Dim i
	i = 0
	While i < 3
		MoveTo 1048,597
		RightClick 1
		Delay 1000
		i=i+1
	Wend
		call thirteenth
End Sub

Sub thirteenth
	While True
		FindPic 571,630 ,606,644,"C:\hehe\打开宝箱.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 10
			Call fourteenth
		End If
	Wend
End Sub

Sub fourteenth
	While True
		FindPic 305,626,362,641,"C:\hehe\稍后抽取.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 10
			Call fifteenth
		End If
	Wend
End Sub

Sub fifteenth
	While True
		FindPic 567,450,634,470,"C:\hehe\退出副本.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 10
			Call first
		End If
	Wend
End Sub

Call first

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
MacroID=d704cdd7-9f85-4132-be2b-321d991dfeee
Description=末日预言
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
		FindPic 938,633,953,648,"C:\hehe\单人挑战.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 1
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
		MoveTo 1090, 643
		RightClick 1
		i = i + 1
		Delay 300
	Wend
	Call middle
End Sub

Sub middle
	Delay 15000
	While True
		FindPic 110,622,123,633,"C:\hehe\末日.bmp",0.6,intX,intY
		If intX <= 110 or intY <= 622 Then 
			KeyPress "ESC", 1
			Delay 4000
			Call fourth
		End If
	Wend
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
		FindPic 567,450,634,470,"C:\hehe\退出副本.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			LeftClick 10
			Call first
		End If
	Wend
End Sub

Call first

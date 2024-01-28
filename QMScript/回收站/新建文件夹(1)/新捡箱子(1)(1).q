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
MacroID=01dd5f47-8f7c-4233-ad13-4e6a458a5f8b
Description=新捡箱子
Enable=0
AutoRun=0
[Repeat]
Type=1
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

While True
    FindColorEx 219,129,937,618 ,"2CB1BB",0,0.9,intX1,intY1
	If intX1 > 100 And intY1 > 100 Then 
		FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"7B625D",0,0.9,intX2,intY2
		If intX2 > 100 And intY2 > 100 Then 
		 	FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"2B3E6C",0,0.9,intX3,intY3
			If intX3 > 100 And intY3 > 100 Then 
				MoveTo intX1, intY1
				//KeyPress "W",1
				RightClick 1
			End If
		End If
	End If
	
	FindColorEx 219,129,937,618 ,"286D78",0,0.9,intX1,intY1
	If intX1 > 100 And intY1 > 100 Then 
		FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"6E5C55",0,0.9,intX2,intY2
		If intX2 > 100 And intY2 > 100 Then 
		 	FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"323E5A",0,0.9,intX3,intY3
			If intX3 > 100 And intY3 > 100 Then 
				MoveTo intX1, intY1
				//KeyPress "W",1
				RightClick 1
			End If
		End If
	End If
	
	FindColorEx 219,129,937,618 ,"2A7C89",0,0.9,intX1,intY1
	If intX1 > 100 And intY1 > 100 Then 
		FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"6D5C55",0,0.9,intX2,intY2
		If intX2 > 100 And intY2 > 100 Then 
		 	FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"313C62",0,0.9,intX3,intY3
			If intX3 > 100 And intY3 > 100 Then 
				MoveTo intX1, intY1
				//KeyPress "W",1
				RightClick 1
			End If
		End If
	End If
	
	
Wend

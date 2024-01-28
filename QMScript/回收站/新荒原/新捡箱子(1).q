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
MacroID=4887d3d1-e5cd-4a51-b79d-bf21ca928ab3
Description=新捡箱子
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

While True
    FindColorEx 328,142,1000,550,"35C1CD",0,0.9,intX1,intY1
	If intX1 > 100 And intY1 > 100 Then 
		FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"265A6A",0,0.7,intX2,intY2
		If intX2 > 100 And intY2 > 100 Then 
		 	FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"7C665E",0,0.7,intX3,intY3
			If intX3 > 100 And intY3 > 100 Then 
					MoveTo intX1, intY1
					//KeyPress "3",1
					RightClick 1
					
					LeftClick 1
			End If
		End If
	
	End If


Wend

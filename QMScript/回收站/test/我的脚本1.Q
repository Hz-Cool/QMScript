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
MacroID=5a9bf066-79b4-4a9a-ae8c-e5ba9fbf20c0
Description=豺狼移动
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
Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")//获取窗口句柄
Call Plugin.Window.Move(Hwnd, 0, 0)//将句柄Hwnd的窗口移动到x,y
Plugin.Window.SetClientSize Hwnd, 1200, 750//将句柄为Hwnd的窗口拉伸x,y

Sub first
	While True
		FindColorEx 1119,127,1121,129,"FFA210",0,0.9,intX,intY
		If intX > 0 And intY > 0 Then 
			Call second
		Else 
			MoveTo 1115, 136
			KeyPress "A", 1
			LeftClick 1
			Delay 1200
		End If
	Wend
End Sub


Sub second
	While True
		FindColorEx 1114,158,1116,160,"FFA210",0,0.9,intX,intY
		If intX > 0 And intY > 0 Then 
			Call third
		Else 
			MoveTo 1120,152  
			KeyPress "A", 1
			LeftClick 1
			Delay 1200
		End If

	Wend
End Sub

Sub third
	While True
		FindColorEx 1095,141,1097,143,"FFA210",0,0.9,intX,intY
		If intX > 0 And intY > 0 Then 
			Call first
		Else 
			MoveTo 1102,150
			KeyPress "A", 1
			LeftClick 1
			Delay 1200
		End If

	Wend
End Sub

Call first

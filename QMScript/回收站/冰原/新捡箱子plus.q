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
MacroID=0ea50fef-9bc0-4461-8873-12f6457fc825
Description=�¼�����fast
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
Hwnd = Plugin.Window.Find("COSCLIENT", "Ӣ��֮��")//��ȡ���ھ��
Call Plugin.Window.Move(Hwnd, 0, 0)//�����Hwnd�Ĵ����ƶ���x,y
Plugin.Window.SetClientSize Hwnd, 1200, 750//�����ΪHwnd�Ĵ�������x,y
While True
    FindColorEx 219,129,937,618 ,"31A0AF",0,0.9,intX1,intY1
	If intX1 > 100 And intY1 > 100 Then 
		FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"6B5A55",0,0.9,intX2,intY2
		If intX2 > 100 And intY2 > 100 Then 
				MoveTo intX1, intY1
				//KeyPress "W",1
				RightClick 1
							LeftClick 2
		End If
	End If
	
	FindColorEx 219,129,937,618 ,"31A0AF",0,0.9,intX1,intY1
	If intX1 > 100 And intY1 > 100 Then 
		FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"6B5A55",0,0.9,intX2,intY2
		If intX2 > 100 And intY2 > 100 Then 
		 
				MoveTo intX1, intY1
				//KeyPress "W",1
				RightClick 1
			LeftClick 2
		End If
	End If
	
	FindColorEx 219,129,937,618 ,"6B5A55",0,0.9,intX1,intY1
	If intX1 > 100 And intY1 > 100 Then 
		FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"2F3C65",0,0.9,intX2,intY2
		If intX2 > 100 And intY2 > 100 Then 
				MoveTo intX1, intY1
				//KeyPress "W",1
				RightClick 1
				LeftClick 2
		End If
	End If
Wend

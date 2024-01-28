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
MacroID=2ede5b30-c4f8-4244-8fe9-e4eae12acedd
Description=地狱狂潮
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
Sub first
	While true
		FindPic 975,631,1037,652,"C:\mine\开始匹配.bmp",0.7,intx,inty
		If intx>0 And inty>0 Then 
			MoveTo intx, inty
			LeftClick 1
			Call second
		End If
	Wend
End Sub

Sub second
	While true
		FindPic 516,451,539,464,"C:\mine\接受匹配.bmp",0.6,intx,inty
		If intx>0 And inty>0 Then 
			MoveTo intx, inty
			LeftClick 5
			Call third
		End If
	Wend
End Sub

Sub third
	While true
		FindPic 109,622,125,634,"C:\mine\进入标志.bmp",0.6,intx,inty
		If intx > 0 And inty > 0 Then 
			KeyPress "Esc", 1
			Delay 1500
			Call fourth
		End If
	Wend
End Sub

Sub fourth
	MoveTo 814,584
	LeftClick 1
	Delay 800
	MoveTo 1129,639
	LeftClick 1 
	Delay 800
	MoveTo 438,371
	LeftClick 1
	
	KeyPress "Space", 1
	RightClick 1
	Delay 2000
	Call fifth
End Sub

Sub fifth
	While true
		FindPic 434,673,468,696,"C:\mine\领取奖励.bmp",0.6,intx,inty
		If intx>0 And inty>0 Then 
			MoveTo intx, inty
			LeftClick 3
			Call sixth
		Else 
			MoveTo 1123,242
			LeftClick 1
			MoveTo 200,200
			Delay 100
		End If
	Wend
End Sub

Sub sixth
	MoveTo 772, 205
	LeftClick 5
	Delay 1000
	While True
		FindPic 388,427,807,505,"C:\mine\结算宝箱.bmp",0.6,intx,inty
		If intx > 0 And inty > 0 Then 
			MoveTo intx, inty
			LeftClick 2
			Delay 100
		Else
			Call seventh
		End If
	Wend
	
End Sub

Sub seventh
	While true
		FindPic 975,631,1037,652,"C:\mine\开始匹配.bmp",0.7,intx,inty
		If intx>0 And inty>0 Then 
			Call first
		Else 
			MoveTo 604, 584
			LeftClick 1
		End If
	Wend
End Sub


Call first


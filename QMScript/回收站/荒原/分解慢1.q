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
MacroID=6f2efde0-a1cd-426c-8734-0e67dbb49de2
Description=·Ö½â(Âý)
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
Sub beibao
	While True
		FindPic 778,590,804,602,"C:\hehe\±³°ü´ò¿ª.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			Call ½ð½£
		Else 
			FindPic 837,684,978,733,"C:\hehe\±³°ü.bmp",0.5,intX,intY
			If intX > 0 And intY > 0 Then 
				MoveTo intX,intY
				LeftClick 1
				Delay 1000
			End If
		End If
	Wend
End Sub


Sub ½ð½£
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\½ð½£.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call ½ðîø¼×
		End If
		Delay 500
	Wend
End Sub

Sub ½ðîø¼×
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\½ðîø¼×.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call ½ðÏîÁ´
		End If
		Delay 500
	Wend
End Sub

Sub ½ðÏîÁ´
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\½ðÏîÁ´.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call ½ðÑ¥×Ó
		End If
		Delay 500
	Wend
End Sub

Sub ½ðÑ¥×Ó
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\½ðÑ¥×Ó.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call ×Ï½£
		End If
		Delay 500
	Wend
End Sub


Sub ×Ï½£
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\×Ï½£.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call ×Ïîø¼×
		End If
		Delay 500
	Wend
End Sub

Sub ×Ïîø¼×
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\×Ïîø¼×.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call ×ÏÏîÁ´
		End If
	Wend
	Delay 500
End Sub

Sub ×ÏÏîÁ´
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\×ÏÏîÁ´.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call ×ÏÑ¥×Ó
		End If
		Delay 500
	Wend
End Sub

Sub ×ÏÑ¥×Ó
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\×ÏÑ¥×Ó.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call À¶½£
		End If
		Delay 500
	Wend
End Sub

Sub À¶½£
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\À¶½£.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call À¶îø¼×
		End If
		Delay 500
	Wend
End Sub

Sub À¶îø¼×
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\À¶îø¼×.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call À¶ÏîÁ´
		End If
		Delay 500
	Wend
End Sub

Sub À¶ÏîÁ´
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\À¶ÏîÁ´.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call À¶Ñ¥×Ó
		End If
		Delay 500
	Wend
End Sub

Sub À¶Ñ¥×Ó
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\À¶Ñ¥×Ó.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call °×½£
		End If
		Delay 500
	Wend
End Sub

Sub °×½£
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\°×½£.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call °×îø¼×
		End If
		Delay 500
	Wend
End Sub

Sub °×îø¼×
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\°×îø¼×.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call °×ÏîÁ´
		End If
		Delay 500
	Wend
End Sub

Sub °×ÏîÁ´
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\°×ÏîÁ´.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX, intY
			RightClick 1
			Delay 1
			LeftClick 1
		Else 
			Call °×Ñ¥×Ó
		End If
		Delay 500
	Wend
End Sub

Sub °×Ñ¥×Ó
	While True
		MoveTo 360,180
		FindPic 322,152,842,543,"C:\hehe\°×Ñ¥×Ó.bmp",0.5,intX,intY
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
		LeftClick 10
		Delay 200
		i = i + 1
	Wend
	While True
		FindPic 798,590 ,804,602,"C:\hehe\±³°ü´ò¿ª.bmp",0.5,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo 879,722
			LeftClick 1
			Delay 1550
		Else 
			Call beibao
		End If
	Wend
End Sub

Call beibao

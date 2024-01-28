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
MacroID=e81d5139-e940-4b4a-8bfc-d7333776180c
Description=Ïä×Ó²âÊÔ
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
While True
    FindColorEx 350,139,882,562,"33E4F4",0,0.8,intX,intY
    If intX > 100 And intY > 100 Then 
        FindColorEx intX-10,intY-10,intX+10,intY+10,"314A79",0,0.8,intX1,intY1
        If intX1 > 100 And intY1 > 100 Then 
            FindColorEx intX-10,intY-10,intX+10,intY+10," A28683",0,0.8,intX2,intY2
            If intX2 > 0 And intY2 > 0 Then 
                FindColorEx intX-10,intY-10,intX+10,intY+10,"9DADA6",0,0.8,intX3,intY3
                If intX3 > 0 And intY3 > 0 Then 
                    MoveTo intX3, intY3
                    RightClick 2
                    LeftClick 2
                End If
            End If
        End If
    End If
Wend



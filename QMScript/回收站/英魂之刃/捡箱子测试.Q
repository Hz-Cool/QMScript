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
MacroID=1dd8f7e5-0669-410f-9ddd-cfddbbf02c47
Description=¼ñÏä×Ó²âÊÔ
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
FindPic 1114,599,1268,730,"C:\Users\Administrator\Desktop\AJJL\t0\map.bmp",0.5,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo intX + 10, intY + 10
    RightClick 2
    MoveTo intX + 10, intY + 10
    LeftClick 2
    KeyPress "R", 1
End If



//While True
//    FindColorEx 359,120,1094,673 ,"2CB1BB",0,0.9,intX1,intY1
//    If intX1 > 100 And intY1 > 100 Then 
//        FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"7B625D",0,0.9,intX2,intY2
//        If intX2 > 100 And intY2 > 100 Then 
//            FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"2B3E6C",0,0.9,intX3,intY3
//            If intX3 > 100 And intY3 > 100 Then 
//                MoveTo intX1, intY1
//                //KeyPress "W",1
//                RightClick 1
//            End If
//        End If
//    End If
//    FindColorEx 359,120,1094,673 ,"286D78",0,0.9,intX1,intY1
//    If intX1 > 100 And intY1 > 100 Then 
//        FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"6E5C55",0,0.9,intX2,intY2
//        If intX2 > 100 And intY2 > 100 Then 
//            FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"323E5A",0,0.9,intX3,intY3
//            If intX3 > 100 And intY3 > 100 Then 
//                MoveTo intX1, intY1
//                //KeyPress "W",1
//                RightClick 1
//            End If
//        End If
//    End If
//    FindColorEx 359,120,1094,673 ,"2A7C89",0,0.9,intX1,intY1
//    If intX1 > 100 And intY1 > 100 Then 
//        FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"6D5C55",0,0.9,intX2,intY2
//        If intX2 > 100 And intY2 > 100 Then 
//            FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"313C62",0,0.9,intX3,intY3
//            If intX3 > 100 And intY3 > 100 Then 
//                MoveTo intX1, intY1
//                //KeyPress "W",1
//                RightClick 1
//            End If
//        End If
//    End If
//Wend
//

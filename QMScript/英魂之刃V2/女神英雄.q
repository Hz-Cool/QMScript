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
MacroID=29bce16a-e740-4f82-add9-ad49c602f2c5
Description=Ů��Ӣ��
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
Delay 1000
Hwnd = Plugin.Window.Find("COSCLIENT", "Ӣ��֮��")//��ȡ���ھ��
Call Plugin.Window.Move(Hwnd, 0, 0)//�����Hwnd�Ĵ����ƶ���x,y
Plugin.Window.SetClientSize Hwnd, 1200, 750//�����ΪHwnd�Ĵ�������x,y
Delay 2000
������ս 
const������ս = 0
Sub ������ս
    While True
        TracePrint "������ս" & const������ս        
        FindPic 813, 548, 1163, 738, "C:\yhzr\Ů��\������ս.bmp", 0.7, intX, intY
        If intX > 0 And intY > 0 Then 
            TracePrint "������ս ��һ��"
            MoveTo intX, intY
            LeftClick 3
            Delay 2000 
            Call ����BOSS
        Else 
            MoveTo 650, 443
            LeftClick 10
        End If
    Wend
    Delay 5000
    const������ս = const������ս + 1
    If const������ս > 18 Then 
        TracePrint "������ս > 15"
        Call ����BOSS
    End If
End Sub
const����BOSS = 0
const����BOSSClick = 0
Sub ����BOSS
    While True
        TracePrint "����BOSS" & const����BOSS
        TracePrint "����BOSS" & const����BOSSClick
        FindPic 240,433,1001,730,"C:\yhzr\Ů��\esc.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            //KeyPress "Esc", 1
        End If
        FindPic 968,588,1184,740,"C:\yhzr\Ů��\С��.bmp",0.5,intX,intY
        If intX > 0 And intY > 0 Then 
            FindPic 240,433,1001,730,"C:\yhzr\Ů��\esc.bmp",0.7,intX,intY
            If intX > 0 And intY > 0 Then 
               // KeyPress "Esc", 1
            End If
            TracePrint "����BOSS ���"
            Delay 2000
            MoveTo 1100,654
            KeyPress "A", 1
            LeftClick 1
            const����BOSSClick = const����BOSSClick + 1
            If const����BOSSClick > 3 Then 
                TracePrint "const����BOSSClick > 3"
                Call �򿪱���
            End If
        End If
        FindPic 240,433,1001,730,"C:\yhzr\Ů��\esc.bmp",0.7,intX,intY
		If intX > 0 And intY > 0 Then 
			 KeyPress "Esc", 1
		End If
        Delay 5000
        const����BOSS = const����BOSS + 1
        If const����BOSS > 15 Then 
            TracePrint "����BOSS > 15"
            Call �򿪱���
        End If
    Wend
End Sub
//const��BOSS = 0
//Sub ��BOSS
//    TracePrint "��BOSS"
//    While True
//        TracePrint "��BOSS" &const��BOSS
//        Delay 5000
//        FindPic 236,7,999,298,"C:\yhzr\Ů��\����.bmp",0.9,intX,intY
//        If intX > 0 And intY > 0 Then 
//            TracePrint "��BOSS ��һ��"
//            Call �򿪱���
//        End If
//        FindPic 320,10,926,167,"C:\yhzr\Ů��\Ů��.bmp",0.9,intX,intY
//        If intX > 0 And intY > 0 Then 
//            TracePrint "��BOSS ��һ��"
//            Call �򿪱���
//        End If
//        const��BOSS = const��BOSS + 1
//        If const��BOSS > 10 Then 
//            TracePrint "��BOSS > 10"        
//            Call �򿪱���
//        End If
//    Wend
//End Sub
Sub �򿪱���
    While True
        Delay 2000
        FindPic 252,314,938,707,"C:\yhzr\��4\�򿪱���.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            LeftClick 1
            Delay 1000
            Call �Ժ��ȡ
        End If
    Wend
End Sub
Sub �Ժ��ȡ
    FindPic 183,475,580,695,"C:\yhzr\��4\�Ժ��ȡ.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        LeftClick 1
        Delay 3000
        �˳�����
    End If
End Sub
Sub �˳�����
    FindPic 431,374,768,514,"C:\yhzr\��4\�˳�����.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX, intY
        LeftClick 1
        Delay 5000
        BOSS = 1
        const������ս = 0
        const����BOSS = 0
        const����BOSS = 0
        const����BOSSClick = 0
        Call ������ս        
    End If
End Sub

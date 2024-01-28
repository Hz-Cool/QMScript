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
MacroID=4ae4d653-9172-4fcc-8f0c-77cbf07c804a
Description=抽卡三张
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
Delay 100
Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")//获取窗口句柄
Call Plugin.Window.Move(Hwnd, 0, 0)//将句柄Hwnd的窗口移动到x,y
Plugin.Window.SetClientSize Hwnd, 1200, 750//将句柄为Hwnd的窗口拉伸x,y


Dim delayTime
delayTime = 2000

chouKa 

//chouKa 
//
//chouKa 
//
//chouKa 

//num1 = Lib.算法.随机数字串(1)
//If num1 > 2 Then 
//	TracePrint "第三次点击位置"
//    chouKa 
//
//End If


MoveTo 423,632 
LeftClick 2
Delay delayTime

Dim num
Dim preNum

Function chouKa
    num = Lib.算法.随机数字串(1)
    // 不能大于6
    If num > 6 Then 
        num	= num  - 4
    End If
    // 不能重复
    If num = preNum Then 
        num	= num  + 1
    End If
    
    
    TracePrint "点击位置" & num
    
    MoveTo 287,313 
    If num = 1 Then 
        MoveTo 287,313 
    End If
    If num = 2 Then 
        MoveTo 429,295
    End If
    If num = 3 Then 
        MoveTo 559,297
    End If
    If num = 4 Then 
        MoveTo 276,481
    End If
    If num = 5 Then 
        MoveTo 418,479
    End If
    If num = 0 Then 
        MoveTo 578,481
    End If
    If num = 6 Then 
        MoveTo 276,481
    End If
    If num > 6 Then 
         MoveTo 287,313 
    End If
    Delay 300
    LeftClick 2
    Delay 800
    RightClick 2
    Delay delayTime

    preNum = num
End Function


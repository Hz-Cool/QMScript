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
MacroID=df9f5118-5edd-4f72-915c-bfd2cdb13c1d
Description=分解无用装备
Enable=1
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
Dim i
i = 1
Dim pet
pet = 1
Dim num
While i <> 0
    // 杀死截图
    Kill 
    // 宠物召唤
    PetPush 
    // 小概率截图
    num = Lib.算法.随机数字串(2)
    If num > 97 Then  
        Call Lib.图像.无限屏幕截图(0, 0, 1366, 768, "C:\英魂之刃\", "bmp")
    End If
    HandleEquip // 装备处理
    offNoAutoCall // 开启关闭自动挂机
    CloseWindow  // 关闭窗体
    Delay 5000
Wend
Function level0()
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\0-1.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\0-2.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\0-3.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\0-4.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
End Function
Function level1()
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\1-1.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\1-2.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\1-3.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\1-4.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
End Function
Function level2()
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\2-1.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\2-2.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\2-3.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 439,128,919,565,"C:\Users\Administrator\Desktop\AJJL\2-4.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
End Function
//打开仓库
Function openRep()
    FindPic 671,498,965,648,"C:\Users\Administrator\Desktop\AJJL\rep.bmp",0.9,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        LeftClick 1
    End If
End Function
// 黄色是放入仓库
Function level3()
    FindPic 818,164,1247,519,"C:\Users\Administrator\Desktop\AJJL\3-1.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 818,164,1247,519,"C:\Users\Administrator\Desktop\AJJL\3-2.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 818,164,1247,519,"C:\Users\Administrator\Desktop\AJJL\3-3.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
    FindPic 818,164,1247,519,"C:\Users\Administrator\Desktop\AJJL\3-4.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX + 5, intY + 5
        RightClick 1
        MoveTo intX + 10, intY + 10
        LeftClick 1
    End If
    Delay 1200
End Function
Function showText(text)
    Call Plugin.Msg.ShowScrTXT(0, 0, 200, 200, text, "0000FF")
End Function
Function offNoAutoCall()
    showText ("开关自动挂机")
    MoveTo 906,136
    //关闭背包
    LeftClick 2
    Delay 1200
    //打开挂机面板
    FindColor 1150,85,1285,189,"149D25",intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX,intY
        LeftClick 1
    End If
    Delay 1200
    //开启关闭按钮
    MoveTo 680,460
    LeftClick 1
    Delay 200
    LeftClick 1
    //打开背包
    FindPic 763,625,931,762,"C:\Users\Administrator\Desktop\AJJL\bb.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX,intY
        LeftClick 2
    End If
End Function
// 被杀死次数截图
Function Kill
    FindPic 490,259,973,547,"C:\Users\Administrator\Desktop\AJJL\kill.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        Call Lib.图像.无限屏幕截图(0, 0, 1366, 768, "C:\英魂之刃kill\", "bmp")
    End If
End Function
// 召唤宠物
Function PetPush
    num = Lib.算法.随机数字串(2)
    // 小概率截图
    If num > 89 Then  
        If  pet = 1 Then
            MoveTo 120, 672
            LeftClick 1
            pet = 2
        ElseIf pet = 2 Then
            MoveTo 149, 672
            LeftClick 1
            pet = 3
        ElseIf pet = 3 Then
            MoveTo 120, 700
            LeftClick 1
            pet = 4
        ElseIf pet = 4 Then
            MoveTo 149, 700
            LeftClick 1
            pet = 1
        End If
    End If
End Function
// 装备处理
Function HandleEquip
    showText("程序开始")
    level0 
    level0 
    showText("分解白色装备")
    Delay 1200
    level1 
    level1 
    showText("分解蓝色装备")
    Delay 1200
    level2 
    level2 
    showText("分解紫色装备")
    Delay 1200
    showText ("金色装备放入仓库")
    //    openRep 
    //    Delay 2000
    //    level3
    //    level3
    //    Delay 1000
    //    关闭仓库
    //    MoveTo 1238, 170
    //    LeftClick 2
    //    Delay 1000
End Function
// 关闭各种弹窗
Function CloseWindow
    Delay 2000
    //关闭好友申请
    MoveTo 854, 243
    LeftClick 1
    //关闭分解失败
    MoveTo 685, 428
    LeftClick 1
    //关闭 稀有物品分解
    MoveTo 754, 427
    LeftClick 1
End Function

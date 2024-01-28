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
MacroID=22324f4b-9b86-42e1-91b2-8cd4173e69e7
Description=分解+捡箱子
Enable=0
AutoRun=0
[Repeat]
Type=1
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[UIPackage]
UEsDBBQAAgAIACJrv1RHSiNylwMAAAgmAAAJABEAVUlQYWNrYWdlVVQNAActF5ZiLReWYi0XlmLtWEtPU0EUPrfl0ZZaWoSCvCwgiq50b0wskYQEH6FVEhM1FasQSyFtSfDf6NrEaKJ/wZWJLl3qwq1LdlK/uXcunSKEOTMXapN+zem0Ted+M2fOc8Lk4dvX1I83H0Z/0gHcoDDt1aPUo/zmSHGRJArJ73v1et3/ud5BW+EPpEueoTjrbkgvJAqJQGKQM5A+SByS8I6e+iEpOW+vo8a2xTJt4lWjDN2iMsYKvSIO0rAY/1nOcX9+8vrzu9p3J0zSwID7tEhXyRwRchyfP3QM7/6oYJ7ytGSxgpjkH5a+w+XPQ99bVKQ7VKANjFwMUMjlT8nYqzuvS46+//4v0sHpYmGzsmHhfiTmX7OY75AdbOfb4uP7L79s9s9w2ROZbxp3GvEv1FTz6Z6ZHytF1inQUyoZriGB+Ncn6xRd/pAS/x7QOlUhpitIGuw/rPAvg7VAz+gu9FBi5l4//sflM3X5uxT+PPh3kPctzt/h7r9bOf95VB8lSMVwJYMG/D3K/hv8WZzDKr3k87v1cj9D/70Hzn/VUv+iPo8w+CPk1fAqHsEpdqn90Nti/t3Dde6mpdu5TK5QrmZyxcr68xPin3372Gr+Q0SeCuJPEe8mEPF3SPqUrv1FFftfgu/xva7Z/pPyebr8sUP9P4d1rEEPvGw4Av8/SyIO6/P3Kfw3Uf1vuTmgAiljDbwslMb+o+T15br8cYV/AXsv28Ufdv4T8er6/v5LyL4vsAah97JJ/GfzJ5rOvwD917AGoYesew5+JmjYxtGYg/7T1Lj30uHvV/iz7vM9/9PhO8T+nEEmf1Lht40ftvWnLZbWq7Xs5o7tfOMSvt37lzwsv+bWvibW58Yftv+lFPu7B/4dsJdQhZsgYcA/cIBf1F/b2LfJLcyIAb96X+7dP5l3kDFYkM89etSfTvj+6RIz/oh86ddtreg/RbyMyM9B9J8ZjOdJP/8OUaD9pzPF1H+agu0/x1w/0N//MAXff15k8Df73+n3nyMUbP85jvECY//nFH5b2Ob/qIwFK+g/fxvMb3X+DLeY37b/DOL+YRrjBMP+Rqlx/xBA/8mO/2MUbP85K31Kl3+cAu0/nTmMlxn8ExRs/zmJcYbBP0mt7T9Frvb7z0VwC51XDfnjBvwZatQfObf29XywCD/gYsCAf0rRv0PdJbRAxgVo3TIB2PafVz6tUQfmCOD+gW1/0//Ev214YPnU+GcouPrH9wEOf9Cw4f8LUEsBAhcLFAACAAgAImu/VEdKI3KXAwAACCYAAAkACQAAAAAAAAAAAACAAAAAAFVJUGFja2FnZVVUBQAHLReWYlBLBQYAAAAAAQABAEAAAADPAwAAAAA=


[Script]
/**
每过3分钟 进行一次仓库分解
仓库分解时间为30秒每次
**/

Delay 1000
Form1.ListBox1.List = "程序开始"
缩小窗口
//初始时间记录
Dim times
times = 毫秒级时间戳
//当前的类型   1=捡宝箱  2=分解仓库(30秒)
Dim currType
currType = 2
//是否已经Log了 0=未Log 1=Log完成
Dim isLog
isLog = 0
//宠物相关 
//1=第一个宠物 2 3 4
Dim petType
petType = 1
//宠物在线时长 5分钟一召唤
Dim petTime
petTime = 毫秒级时间戳
// 宠物是否运行 0未运行 1已运行
Dim petRun
petRun = 0

While True
    If  currType = 1 Then 
        分解装备 
    End If
    If  currType = 2 Then 
        捡箱子 
    End If
    // 开始分解
    If  currType = 1 And 毫秒级时间戳 - times > 15000  Then 
        currType = 2
        times = 毫秒级时间戳
        isLog = 0
    End If
    // 开始捡箱子
    If  currType = 2 And 毫秒级时间戳 - times > 240000  Then 
        currType = 1
        times = 毫秒级时间戳
        isLog = 0
    End If
    //宠物召唤
    宠物召唤
    // 清理Log队列
    If  getListCount >20  Then 
        clearList
    End If
    Delay 20
Wend

installList(getListCount)

//队首 插入
Function installList(text)
    Form1.ListBox1.InsertItem text,0 
End Function

//清理队列
Function clearList()
    Form1.ListBox1.List = "清理队列完成"
End Function

//队列长度 
Function getListCount()
    getListCount=  Form1.ListBox1.ListCount
End Function

Function 毫秒级时间戳()
    毫秒级时间戳=    (DateDiff("s","1970/1/1 00:00:00",Now())*1000)+(Round((timer() - Int(timer()))*1000,0))-T1
End Function

Function 时间戳转时间(时间戳)
    时间戳转时间=    DateAdd("s",时间戳,"1970/01/01 00:00:00")
End Function

Function 缩小窗口
    Hwnd = Plugin.Window.Find("COSCLIENT", "英魂之刃")//获取窗口句柄
    Call Plugin.Window.Move(Hwnd, 0, 0)//将句柄Hwnd的窗口移动到x,y
    Plugin.Window.SetClientSize Hwnd, 1200, 750//将句柄为Hwnd的窗口拉伸x,y
End Function

Function 捡箱子
    // 写入Log
    If isLog = 0 Then 
        installList ("捡箱子：" & Plugin.Sys.GetDateTime())
        //关闭背包
        MoveTo 828, 135
        LeftClick 1
        Delay 500
    End If
    isLog = 1
    
    FindColorEx 219,129,937,618 ,"2CB1BB",0,0.9,intX1,intY1
    If intX1 > 100 And intY1 > 100 Then 
        FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"7B625D",0,0.9,intX2,intY2
        If intX2 > 100 And intY2 > 100 Then 
            FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"2B3E6C",0,0.9,intX3,intY3
            If intX3 > 100 And intY3 > 100 Then 
                MoveTo intX1, intY1
                KeyPress "W",1
                LeftClick 2
                RightClick 2
            End If
        End If
    End If
	
    FindColorEx 219,129,937,618 ,"286D78",0,0.9,intX1,intY1
    If intX1 > 100 And intY1 > 100 Then 
        FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"6E5C55",0,0.9,intX2,intY2
        If intX2 > 100 And intY2 > 100 Then 
            FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"323E5A",0,0.9,intX3,intY3
            If intX3 > 100 And intY3 > 100 Then 
                MoveTo intX1, intY1
                KeyPress "W",1
                LeftClick 2
                RightClick 2
            End If
        End If
    End If
	
    FindColorEx 219,129,937,618 ,"2A7C89",0,0.9,intX1,intY1
    If intX1 > 100 And intY1 > 100 Then 
        FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"6D5C55",0,0.9,intX2,intY2
        If intX2 > 100 And intY2 > 100 Then 
            FindColorEx intX1-10,intY1-10,intX1+10,intY1+10,"313C62",0,0.9,intX3,intY3
            If intX3 > 100 And intY3 > 100 Then 
                MoveTo intX1, intY1
                KeyPress "W",1
                LeftClick 2
                RightClick 2
            End If
        End If
    End If
    
    Delay 6
   
End Function


Function 分解装备
    // 写入Log
    If isLog = 0 Then 
        installList ("分解装备：		" & Plugin.Sys.GetDateTime())
        installList ("重启挂机程序：" & Plugin.Sys.GetDateTime())
        Delay 1000
        MoveTo 1141, 128
        LeftClick 1
        Delay 1000
        MoveTo 596,468
        LeftClick 1
        Delay 1000
        LeftClick 1
        Delay 1500
        installList ("打开背包：		" & Plugin.Sys.GetDateTime())
        FindPic 642,602,882,739,"C:\yhzr\背包.bmp",0.9,intX,intY
        If intX > 0 And intY > 0 Then 
            MoveTo intX, intY
            LeftClick 1
        End If
        Delay 1000
    End If
    isLog = 1

    FindPic 355,183,834,544,"C:\yhzr\蓝项链.bmp",0.5,intX,intY
    If intX > 0 And intX > 0 Then 
        分解 intX,intY
    End If
    FindPic 355,183,834,544,"C:\yhzr\蓝铠甲.bmp",0.5,intX,intY
    If intX > 0 And intX > 0 Then 
        分解 intX,intY
    End If
    FindPic 355,183,834,544,"C:\yhzr\蓝匕首.bmp",0.5,intX,intY
    If intX > 0 And intX > 0 Then 
        分解 intX,intY
    End If   
    FindPic 355,183,834,544,"C:\yhzr\蓝靴子.bmp",0.5,intX,intY
    If intX > 0 And intX > 0 Then 
        分解 intX,intY
    End If
    //
    FindPic 355,183,834,544,"C:\yhzr\紫项链.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        分解 intX,intY
    End If
    FindPic 355,183,834,544,"C:\yhzr\紫铠甲.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        分解 intX,intY
    End If
    FindPic 355,183,834,544,"C:\yhzr\紫匕首.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        分解 intX,intY
    End If
    FindPic 355,183,834,544,"C:\yhzr\紫靴子.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        分解 intX,intY
    End If
    //
    FindPic 355,183,834,544,"C:\yhzr\白靴子.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        分解 intX,intY
    End If
    FindPic 355,183,834,544,"C:\yhzr\白匕首.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        分解 intX,intY
    End If
    FindPic 355,183,834,544,"C:\yhzr\白铠甲.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        分解 intX,intY
    End If
    FindPic 355,183,834,544,"C:\yhzr\白项链.bmp",0.5,intX,intY
    If intX > 0 And intY > 0 Then 
        分解 intX,intY
    End If

   
End Function

Function 分解(intX,intY)
    MoveTo intX+5, intY+5
    RightClick 1
    Delay 200
    MoveTo intX+7, intY+7
    LeftClick 1
    installList "分解成功："& intX &"," & intY
    Delay 1000
End Function

Function 宠物召唤
    If  petType = 1 And petRun = 0 Then 
        召唤点击 30, 681
    End If
    If  petType = 2 And petRun = 0 Then 
        召唤点击 56,676
    End If
    If  petType = 3 And petRun = 0 Then 
        召唤点击 25,712
    End If
    If  petType = 4 And petRun = 0 Then 
        召唤点击 55,715
    End If
    // 五分钟一召唤
    If 毫秒级时间戳 - petTime > 5 * 60 * 1000 Then 
        If  petType = 4 Then 
            petType = 1
        Else 
            petType = petType + 1
        End If
        petTime = 毫秒级时间戳
        petRun = 0
    End If
End Function

Function 召唤点击(x, y)
    MoveTo x,y
    LeftClick 2
    Delay 100
    petRun = 1
    installList "宠物召唤："& petType
End Function

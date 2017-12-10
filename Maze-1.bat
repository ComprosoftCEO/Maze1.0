::=====================================
:: Maze 1.0 - Created by Bryan McClain
::=====================================

:top
@echo off
set key1=0
set key2=0
set key3=0
set key4=0
set key5=0
set key12=0
set key22=0
set key32=0
set key42=0
set key52=0
set h=500
set eh=1000
set max=0
set small=0
set d=0
set charge=0
set bosswin=0
set /a code11=%random% / (32767 / 10)
set /a code12=%random% / (32767 / 10)
set /a code13=%random% / (32767 / 10)
set /a code21=%random% / (32767 / 10)
set /a code22=%random% / (32767 / 10)
set /a code23=%random% / (32767 / 10)
set sc1=???
set sc2=???
set g1=3
set g2=3
set i11=
set i12=
set i13=
set i21=
set i22=
set i23=
set c1wrong=0
set c1right=0
set c2wrong=0
set c2right=0
set tsd=0
set isd=0
set std=0
set sed=0
set ifd=0
set map=0
echo off
title Maze Version 1.0
color 0a
cls
echo ษอออออออออออออออออออออป
echo บMaze Version 1.0     บ
echo ศอออออออออออออออออออออผ
echo.
echo ษอออออออออออออออออออออออออออออป
echo บ  Created By Bryan McClain   บ
echo บ                             บ
echo บ (C) COMPROSOFT Corporation  บ
echo บ                             บ
echo บOffical Seal of Batch Qualityบ
echo บ  Professional Programming   บ
echo บ            ไ์ไ              บ
echo ศอออออออออออออออออออออออออออออผ
echo.
echo ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
echo ÝThe Command Prompt is   Þ
echo Ýcreated and produced by Þ
echo ÝBIll Gates and the      Þ
echo ÝMicrosoft Corporation   Þ
echo Ý(C) All Rights Reserved Þ
echo ฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
echo.
echo Keys: 
echo p=start/pause
echo asdw=arrow keys
echo x=Action/Alternative Start
echo z=Back
pause
:start
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ                             บ
echo บ     MAZE VERSION 1.0        บ
echo บ       Press Start           บ
echo บ            (p)              บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
echo.
choice /c:p /n
if errorlevel 1 goto menu1
:menu1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ   ()Play the Game           บ
echo บ                             บ
echo บ     Read The Instructions   บ
echo บ                             บ
echo บ     Exit           ษออออออออน
echo บ                    บMaze 1.0บ
echo ศออออออออออออออออออออสออออออออผ
choice /c:wsxpz /n
if errorlevel 5 goto start
if errorlevel 4 goto game
if errorlevel 3 goto game
if errorlevel 2 goto menu2
if errorlevel 1 goto menu3
:menu2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ     Play the Game           บ
echo บ                             บ
echo บ   ()Read The Instructions   บ
echo บ                             บ
echo บ     Exit           ษออออออออน
echo บ                    บMaze 1.0บ
echo ศออออออออออออออออออออสออออออออผ
choice /c:wsxpz /n
if errorlevel 5 goto start
if errorlevel 4 goto inst1
if errorlevel 3 goto inst1
if errorlevel 2 goto menu3
if errorlevel 1 goto menu1
:menu3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ     Play the Game           บ
echo บ                             บ
echo บ     Read The Instructions   บ
echo บ                             บ
echo บ   ()Exit           ษออออออออน
echo บ                    บMaze 1.0บ
echo ศออออออออออออออออออออสออออออออผ
choice /c:wsxpz /n
if errorlevel 5 goto start
if errorlevel 4 goto exit
if errorlevel 3 goto exit
if errorlevel 2 goto menu1
if errorlevel 1 goto menu2
:exit
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ                             บ
echo บ         GOODBYE             บ
echo บ                             บ
echo บ                             บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
exit
:inst1
cls
echo ษอออออออออออออออออออออออออออออป
echo บInstructions:             (1)บ
echo บ=============================บ
echo บThe mission of the game is toบ
echo บuse the keys:                บ
echo บA,S,D,F                      บ
echo บto move your man through the บ
echo บ(a)                       (D)บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adz /n
if errorlevel 3 goto menu2
if errorlevel 2 goto inst2
if errorlevel 1 goto inst6
:inst2
cls
echo ษอออออออออออออออออออออออออออออป
echo บInstructions:             (2)บ
echo บ=============================บ
echo บMaze. If you find a key (/\) บ
echo บuse the X button to trigger  บ
echo บa door blocking your way.    บ
echo บTo puase the game, press p.  บ
echo บ(a)                       (D)บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adz /n
if errorlevel 3 goto menu2
if errorlevel 2 goto inst3
if errorlevel 1 goto inst1
:inst3
cls
echo ษอออออออออออออออออออออออออออออป
echo บInstructions:             (3)บ
echo บ=============================บ
echo บThe mission of the game is toบ
echo บfind the way out of the maze.บ
echo บYou figure out the rest...   บ
echo บ     Can You Do It???        บ
echo บ(a)                       (D)บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adz /n
if errorlevel 3 goto menu2
if errorlevel 2 goto inst4
if errorlevel 1 goto inst2
:inst4
cls
echo ษอออออออออออออออออออออออออออออป
echo บInstructions:             (4)บ
echo บ=============================บ
echo บItem Refrence:  ____         บ
echo บ/\=Key         / /\ \        บ
echo บ/o\            \ \__/=Portal บ
echo บ\o/=diamond                  บ
echo บ(a)                       (D)บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adz /n
if errorlevel 3 goto menu2
if errorlevel 2 goto inst5
if errorlevel 1 goto inst3
:inst5
cls
echo ษอออออออออออออออออออออออออออออป
echo บInstructions:             (5)บ
echo บ=============================บ
echo บItem Refrence:               บ
echo บ{/}       [#]=keypad         บ
echo บ{/}        ---=hidden pathwayบ
echo บ{/}=Door                     บ
echo บ(a)                       (D)บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adz /n
if errorlevel 3 goto menu2
if errorlevel 2 goto inst6
if errorlevel 1 goto inst4
:inst6
cls
echo ษอออออออออออออออออออออออออออออป
echo บInstructions:             (6)บ
echo บ=============================บ
echo บItem Refrence:        ____   บ
echo บ                  ___/0)  \  บ
echo บ  Final Boss      \\\ณ____ณ  บ
echo บ  Snaker             /====\  บ
echo บ(a)                       (D)บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adz /n
if errorlevel 3 goto menu2
if errorlevel 2 goto inst1
if errorlevel 1 goto inst5
:pause
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Pause Screen          บ
echo บ=============================บ
echo บ    ()Continue Game          บ
echo บ                             บ
echo บ      Quit to Main Menu  ()  บ
echo บณณ                       /\  บ
echo บ\/    Exit Game          /\  บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:pxzws /n
if errorlevel 5 goto pause2
if errorlevel 4 goto pause6
if errorlevel 3 goto %section%
if errorlevel 2 goto %section%
if errorlevel 1 goto %section%
:pause2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Pause Screen          บ
echo บ=============================บ
echo บ      Continue Game          บ
echo บ                             บ
echo บ    ()Quit to Main Menu  ()  บ
echo บณณ                       /\  บ
echo บ\/    Exit Game          /\  บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:pxzws /n
if errorlevel 5 goto pause3
if errorlevel 4 goto pause
if errorlevel 3 goto %section%
if errorlevel 2 goto menucon
if errorlevel 1 goto %section%
:pause3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Pause Screen          บ
echo บ=============================บ
echo บ      Continue Game          บ
echo บ                             บ
echo บ      Quit to Main Menu  ()  บ
echo บณณ                       /\  บ
echo บ\/  ()Exit Game          /\  บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:pxzws /n
if errorlevel 5 goto pause4
if errorlevel 4 goto pause2
if errorlevel 3 goto %section%
if errorlevel 2 goto exitcon
if errorlevel 1 goto %section%
:pause4
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Pause Screen          บ
echo บ=============================บ
echo บ/\  ()Items and Status       บ
echo บณณ                           บ
echo บ      Item Refrence      ()  บ
echo บ                         /\  บ
echo บ      Map                /\  บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:pxzws /n
if errorlevel 5 goto pause5
if errorlevel 4 goto pause3
if errorlevel 3 goto %section%
if errorlevel 2 goto items
if errorlevel 1 goto %section% 
:pause5
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Pause Screen          บ
echo บ=============================บ
echo บ/\    Items and Status       บ
echo บณณ                           บ
echo บ    ()Item Refrence      ()  บ
echo บ                         /\  บ
echo บ      Map                /\  บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:pxzws /n
if errorlevel 5 goto pause6
if errorlevel 4 goto pause4
if errorlevel 3 goto %section%
if errorlevel 2 goto ir
if errorlevel 1 goto %section%
:pause6
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Pause Screen          บ
echo บ=============================บ
echo บ/\    Items and Status       บ
echo บณณ                           บ
echo บ      Item Refrence      ()  บ
echo บ                         /\  บ
echo บ    ()Map                /\  บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:pxzws /n
if errorlevel 5 goto pause
if errorlevel 4 goto pause5
if errorlevel 3 goto %section%
if errorlevel 2 goto map
if errorlevel 1 goto %section%
:map
if %map%==1 goto map3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ     Are you sure you        บ
echo บ     want to show the        บ
echo บ          map?               บ
echo บ     (X)-Yes (Z)-No          บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:xz /n
if errorlevel 2 goto pause6
if errorlevel 1 goto map2
:map2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ   You 100 percent Sure?     บ
echo บ    Absolutely Cartain?      บ
echo บ   You'll see most of the    บ
echo บ  Secrets and hidden items!  บ
echo บ     (X)-Yes (Z)-No          บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:xz /n
if errorlevel 2 goto pause6
if errorlevel 1 (
set map=1
goto map3
)
:map3
cls
echo ษอออออออออออออออออออออออออออออป
echo บSยอยยTE     S=start F=Boss   บ
echo บฺล๓ูะDF     E=end      Paths:บ
echo บใรยยยKณÜÜÜÜÜD=diamond  ุ=*3  บ
echo บKุผใCถบÝMapÞT=teleport ถ/ว=*2บ
echo บCถยDฺวู฿฿฿฿฿๓/ใ=One way door บ
echo บTDรฤฺูD     C=Code input     บ
echo บKฤสKภTT     K=key อบสผ=Door  บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:zws /n
if errorlevel 3 goto map4
if errorlevel 2 goto map5
if errorlevel 1 goto pause6
:map4
cls
echo ษอออออออออออออออออออออออออออออป
echo บฤยฤยยฤณÜÜÜÜÜÜÜÜÜÜ            บ
echo บฺลฤูณตณÝPath MapÞ            บ
echo บณรยยยาณ฿฿฿฿฿฿฿฿฿฿  Key       บ
echo บรุูรูบณ       ุ/ื/า=Multible บ
echo บภืยถฺรู                paths บ
echo บฦณรฤุูณ      ต/ฦ=Hidden Zonesบ
echo บฤฤมฤภฤณ                      บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:zws /n
if errorlevel 3 goto map5
if errorlevel 2 goto map3
if errorlevel 1 goto pause6
:map5
cls
echo ษอออออออออออออออออออออออออออออป
echo บ??{??TE  ÜÜÜÜÜÜÜÜÜÜ          บ
echo บ??๓??DF  ÝItem MapÞ   Key    บ
echo บใ????K?  ฿฿฿฿฿฿฿฿฿฿ F=Boss   บ
echo บK?{ใC?{        {=Door K=Key  บ
echo บC??D???        T=Teleport    บ
echo บTD????D        D=Diamond     บ
echo บK?{??TT        ๓/ใ=One way   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:zws /n
if errorlevel 3 goto map3
if errorlevel 2 goto map4
if errorlevel 1 goto pause6
:ir
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Item Refrence      (1)บ
echo บ=============================บ
echo บ/\=Key                       บ
echo บThis item can be used to openบ
echo บdoors. Use the X key to grab บ
echo บit and the X key to use it   บ
echo บ  (S)-Down (W)-Up (z)-Exit   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsz /n
if errorlevel 3 goto pause5
if errorlevel 2 goto ir2
if errorlevel 1 goto ir9
:ir2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Item Refrence      (2)บ
echo บ=============================บ
echo บ{/)                          บ
echo บ{/}   and   /////////        บ
echo บ{/}      Doors               บ
echo บOpen with key. Press X       บ
echo บ  (S)-Down (W)-Up (z)-Exit   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsz /n
if errorlevel 3 goto pause5
if errorlevel 2 goto ir3
if errorlevel 1 goto ir
:ir3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Item Refrence      (3)บ
echo บ=============================บ
echo บ/o\                          บ
echo บ\o/=Diamond                  บ
echo บCollect these valuable thingsบ
echo บwith X. There are 4 hidden.  บ
echo บ  (S)-Down (W)-Up (z)-Exit   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsz /n
if errorlevel 3 goto pause5
if errorlevel 2 goto ir4
if errorlevel 1 goto ir2
:ir4
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Item Refrence      (4)บ
echo บ=============================บ
echo บ ____                        บ
echo บ/ /\ \=Teleport              บ
echo บ\ \__/ These warp you places.บ
echo บ       Enter them with x.    บ
echo บ  (S)-Down (W)-Up (z)-Exit   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsz /n
if errorlevel 3 goto pause5
if errorlevel 2 goto ir5
if errorlevel 1 goto ir3
:ir5
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Item Refrence      (5)บ
echo บ=============================บ
echo บ------=Paths that are hidden.บ
echo บ       These may lead to     บ
echo บ       secret places or show บ
echo บ       secrte codes.         บ
echo บ  (S)-Down (W)-Up (z)-Exit   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsz /n
if errorlevel 3 goto pause5
if errorlevel 2 goto ir6
if errorlevel 1 goto ir4
:ir6
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Item Refrence      (6)บ
echo บ=============================บ
echo บ[#]=A code screen. To use it,บ
echo บ    hit the X key while in   บ
echo บ    the rooom and you will beบ
echo บ    taken to the code entry  บ
echo บ  (S)-Down (W)-Up (z)-Exit   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsz /n
if errorlevel 3 goto pause5
if errorlevel 2 goto ir7
if errorlevel 1 goto ir5
:ir7
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Item Refrence      (7)บ
echo บ=============================บ
echo บ+   and ++++/\++++           บ
echo บ--)     One way Doors        บ
echo บ+  Can only get through in   บ
echo บ   the direction of the arrowบ
echo บ  (S)-Down (W)-Up (z)-Exit   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsz /n
if errorlevel 3 goto pause5
if errorlevel 2 goto ir8
if errorlevel 1 goto ir6
:ir8
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Item Refrence      (8)บ
echo บ=============================บ
echo บ()   John Smith              บ
echo บ/\  The main explorer who    บ
echo บ/\  is trying to get out of  บ
echo บ    this maze.               บ
echo บ  (S)-Down (W)-Up (z)-Exit   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsz /n
if errorlevel 3 goto pause5
if errorlevel 2 goto ir9
if errorlevel 1 goto ir7
:ir9
cls
echo ษอออออออออออออออออออออออออออออป
echo บ       Item Refrence      (9)บ
echo บ=============================บ
echo บ     ____   Final Boss-Snakerบ
echo บ ___/0)  \ He is the guardianบ
echo บ \\\ณ____ณ of the maze and   บ
echo บ    /====\ the final boss.   บ
echo บ  (S)-Down (W)-Up (z)-Exit   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsz /n
if errorlevel 3 goto pause5
if errorlevel 2 goto ir
if errorlevel 1 goto ir8
:items
if /i %h% LSS 100 set yh=0
if /i %h% LSS 10 set yh=00
cls
echo ษอออออออออออออออออออออออออออออป
echo บItems and Status             บ
echo บ=============================บ
echo บKeys: 1 2 3 4 5              บ
echo บFind: %key1% %key2% %key3% %key4% %key5%              บ
echo บUsed: %key12% %key22% %key32% %key42% %key52%              บ
echo บDiamonds: %d%/4  Code 1: %sc1%   บ
echo บHealth: %yh%%h%    Code 2: %sc2%   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:xzp /n
if errorlevel 3 goto %section%
if errorlevel 2 goto pause4
if errorlevel 1 goto pause4
:boss
cls
echo ษอออออออออออออออออออออออออออออป
echo บ(X)-Charce (Z)-Misslie   (P) บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤออออฤฤฤฤฤบ
echo บ  ()            ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
choice /c:zxp /n
if errorlevel 3 goto bossp
if errorlevel 2 goto charge
if errorlevel 1 goto missile
:bossp
set yh=
set eyh=
if /i %h% LSS 100 set yh=0
if /i %h% LSS 10 set yh=00
if /i %eh% LSS 1000 set eyh=0
if /i %eh% LSS 100 set eyh=00
if /i %eh% LSS 10 set eyh=000
cls
echo ษอออออออออออออออออออออออออออออป
echo บ()      ÜÜÜÜÜÜ    ___/0)  \  บ
echo บ/\ John ÝV.S.Þ    \\\ณ____ณ  บ
echo บ/\ Smith฿฿฿฿฿฿Snaker /====\  บ
echo บHP: %yh%%h%           HP: %eyh%%eh%   บ
echo บCommands:                    บ
echo บ(X)-Charce (Z)-Misslie       บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
choice /c:pzx /n
if errorlevel 3 goto boss
if errorlevel 2 goto boss
if errorlevel 1 goto boss
:charge
cls
set co=
if /i %charge% LSS 100 set co=+
if %charge%==0 set c1=00
if %charge%==50 set c1=0
if %charge%==100 (
set c1=
set co=x
)
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ    ()Charge Blaster %co%       บ
echo บ                             บ
echo บ      Fire Blaster-%c1%%charge%       บ
echo บ                             บ
echo บ=============================บ
echo บ(X) Select (Z) Back          บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsxz /n
if errorlevel 4 goto boss
if errorlevel 3 goto chargec
if errorlevel 2 goto charge2
if errorlevel 1 goto charge2
:charge2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ      Charge Blaster %co%       บ
echo บ                             บ
echo บ    ()Fire Blaster-%c1%%charge%       บ
echo บ                             บ
echo บ=============================บ
echo บ(X) Select (Z) Back          บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsxz /n
if errorlevel 4 goto boss
if errorlevel 3 goto chargef
if errorlevel 2 goto charge
if errorlevel 1 goto charge
:chargeno
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ     Sorry, your blaster     บ
echo บ     charge is already at    บ
echo บ            max              บ
echo บ       (press start)         บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:p /n
if errorlevel 1 goto charge
:chargec
if %charge%==100 goto chargeno
set /a charge=%charge%+50
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}          \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()  /         ___/0)  \    บ
echo บ  /\}}          \\\ณ____ณ    บ
echo บ  /\  \            /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()  /-        ___/0)  \    บ
echo บ  /\}}--        \\\ณ____ณ    บ
echo บ  /\  \-           /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}**        \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()  +50       ___/0)  \    บ
echo บ  /\}}          \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
goto bossback
:chargef
set small=1
if %charge%==0 (
set max=50
set small=25
)
if %charge%==50 (
set max=100
set small=50
)
if %charge%==100 (
set max=200
set small=150
)
:recom
cls
echo ษอออออออออออออออออออออออออออออป
echo บLoading, Please Wait...      บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
:recom2
set loss=%random%
if /i %loss% GEQ %small% (
if /i %loss% LEQ %max% (
set /a eh=%eh%-%loss%
goto recomend
)
)
goto recom2
:recomend
set charge=0
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}          \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}---       \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}   ---    \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}      --- \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()         *\ ___/0)  \    บ
echo บ  /\}}      * --\\\ณ____ณ    บ
echo บ  /\          */   /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
goto bossback
:missile
cls
echo ษอออออออออออออออออออออออออออออป
echo บLoading, Please Wait...      บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
:missile2
set loss=%random%
if /i %loss% GEQ 25 (
if /i %loss% LEQ 75 (
set /a eh=%eh%-%loss%
goto missilek
)
)
goto missile2
:missilek
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}          \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}ออ)       \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}   ออ)    \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\}}      ออ) \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ              _  *  ____     บ
echo บ  ()       * / \___/0)  \    บ
echo บ  /\}}      { o-\\\ณ____ณ    บ
echo บ  /\        *\_/*  /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
goto bossback
:bossback
if /i %eh% LEQ 0 goto bosswin
cls
echo ษอออออออออออออออออออออออออออออป
echo บLoading, Please Wait...      บ
echo บ                    ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
:bossback2
set loss=%random%
if /i %loss% GEQ 25 (
if /i %loss% LEQ 50 (
set /a h=%h%-%loss%
goto bossend
)
)
goto bossback2
:bossend
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                (0) ____     บ
echo บ  ()            _Û_/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ           (0)               บ
echo บ            Û       ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ     (0)                     บ
echo บ      Û             ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ    (0)             ____     บ
echo บ  () Û          ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ *     *                     บ
echo บ  !!                ____     บ
echo บ* () *          ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
if /i %h% LEQ 0 goto bossloose
goto boss
:bosswin
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ           AHHHHH!  ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ  ()               * _       บ
echo บ  /\            *   /@\ *    บ
echo บ  /\               /@@@\     บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ  ()                         บ
echo บ  /\                /\       บ
echo บ  /\                         บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
set key5=1
set bosswin=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ       ÜÜÜÜÜÜÜÜÜÜÜÜÜ         บ
echo บ       Ý  You Win  Þ         บ
echo บ       Ý Grand Key Þ         บ
echo บ       Ý Collected Þ         บ
echo บ       ฿฿฿฿฿฿฿฿฿฿฿฿฿         บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
goto te 
:bossloose
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ     NOOOOOO!       ____     บ
echo บ  ()            ___/0)  \    บ
echo บ  /\            \\\ณ____ณ    บ
echo บ  /\               /====\    บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ        *            ____    บ
echo บ *  _            ___/0)  \   บ
echo บ   /@\   *       \\\ณ____ณ   บ
echo บ  /@@@\             /====\   บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ          HA HA HA!  ____    บ
echo บ                 ___/0)  \   บ
echo บ                 \\\ณ____ณ   บ
echo บ                    /====\   บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ       ÜÜÜÜÜÜÜÜÜÜÜÜÜ         บ
echo บ       Ý  you Died Þ         บ
echo บ       Ý Too bad soÞ         บ
echo บ       Ý    Sad    Þ         บ
echo บ       ฿฿฿฿฿฿฿฿฿฿฿฿฿         บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ         GOODBYE             บ
echo บ      And Thank you          บ
echo บ       for trying            บ
echo บ     I hope you liked        บ
echo บ           it                บ
echo บ            -Bryan McClain   บ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 5
exit
:code1
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 1    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     ---       บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Tries: %g1%              ณ%sc1%บ
echo ศอออออออออออออออออออออออออฯอออผ
choice /c:z0123456789 /n
if errorlevel 11 (
set i11=9
goto code12
)
if errorlevel 10 (
set i11=8
goto code12
)
if errorlevel 9 (
set i11=7
goto code12
)
if errorlevel 8 (
set i11=6
goto code12
)
if errorlevel 7 (
set i11=5
goto code12
)
if errorlevel 6 ( 
set i11=4
goto code12
)
if errorlevel 5 (
set i11=3
goto code12
)
if errorlevel 4 (
set i11=2
goto code12
)
if errorlevel 3 (
set i11=1
goto code12
)
if errorlevel 2 (
set i11=0
goto code12
)
if errorlevel 1 goto io
:code12
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 1    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     %i11%--       บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Tries: %g1%              ณ%sc1%บ
echo ศอออออออออออออออออออออออออฯอออผ
choice /c:z0123456789 /n
if errorlevel 11 (
set i12=9
goto code13
)
if errorlevel 10 (
set i12=8
goto code13
)
if errorlevel 9 (
set i12=7
goto code13
)
if errorlevel 8 (
set i12=6
goto code13
)
if errorlevel 7 (
set i12=5
goto code13
)
if errorlevel 6 ( 
set i12=4
goto code13
)
if errorlevel 5 (
set i12=3
goto code13
)
if errorlevel 4 (
set i12=2
goto code13
)
if errorlevel 3 (
set i12=1
goto code13
)
if errorlevel 2 (
set i12=0
goto code13
)
if errorlevel 1 goto code1
:code13
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 1    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     %i11%%i12%-       บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Tries: %g1%              ณ%sc1%บ
echo ศอออออออออออออออออออออออออฯอออผ
choice /c:z0123456789 /n
if errorlevel 11 (
set i13=9
goto code14
)
if errorlevel 10 (
set i13=8
goto code14
)
if errorlevel 9 (
set i13=7
goto code14
)
if errorlevel 8 (
set i13=6
goto code14
)
if errorlevel 7 (
set i13=5
goto code14
)
if errorlevel 6 ( 
set i13=4
goto code14
)
if errorlevel 5 (
set i13=3
goto code14
)
if errorlevel 4 (
set i13=2
goto code14
)
if errorlevel 3 (
set i13=1
goto code14
)
if errorlevel 2 (
set i13=0
goto code14
)
if errorlevel 1 goto code12
:code14
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 1    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)   (x)%i11%%i12%%i13%      บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Tries: %g1%              ณ%sc1%บ
echo ศอออออออออออออออออออออออออฯอออผ
choice /c:zx /n
if errorlevel 2 goto codecheck1
if errorlevel 1 goto code13
:codecheck1
if /i %i11% EQU %code11% (
if /i %i12% EQU %code12% (
if /i %i13% EQU %code13% (
goto coderight1
)
)
)
goto codewrong1
:codewrong1
set /a g1=%g1%-1
if /i %g1% LSS 0 goto c1done
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 1    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     ---       บ
echo บ   (*) (0) (#)    WRONG  ฺฤฤฤบ
echo บ   Tries: %g1%              ณ%sc1%บ
echo ศอออออออออออออออออออออออออฯอออผ
sleep.vbs 1
goto code1
:c1done
set c1wrong=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 1    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     ---       บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Out of tries          ณ%sc1%บ
echo ศอออออออออออออออออออออออออฯอออผ
sleep.vbs 1
goto io
:coderight1
set c1right=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 1    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     ---       บ
echo บ   (*) (0) (#)    RIGHT  ฺฤฤฤบ
echo บ   Tries: %g1%              ณ%sc1%บ
echo ศอออออออออออออออออออออออออฯอออผ
sleep.vbs 1
goto io
:code2
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 2    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     ---       บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Tries: %g2%              ณ%sc2%บ
echo ศอออออออออออออออออออออออออฯอออผ
choice /c:z0123456789 /n
if errorlevel 11 (
set i21=9
goto code22
)
if errorlevel 10 (
set i21=8
goto code22
)
if errorlevel 9 (
set i21=7
goto code22
)
if errorlevel 8 (
set i21=6
goto code22
)
if errorlevel 7 (
set i21=5
goto code22
)
if errorlevel 6 ( 
set i21=4
goto code22
)
if errorlevel 5 (
set i21=3
goto code22
)
if errorlevel 4 (
set i21=2
goto code22
)
if errorlevel 3 (
set i21=1
goto code22
)
if errorlevel 2 (
set i21=0
goto code22
)
if errorlevel 1 goto fi
:code22
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 2    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     %i21%--       บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Tries: %g2%              ณ%sc2%บ
echo ศอออออออออออออออออออออออออฯอออผ
choice /c:z0123456789 /n
if errorlevel 11 (
set i22=9
goto code23
)
if errorlevel 10 (
set i22=8
goto code23
)
if errorlevel 9 (
set i22=7
goto code23
)
if errorlevel 8 (
set i22=6
goto code23
)
if errorlevel 7 (
set i22=5
goto code23
)
if errorlevel 6 ( 
set i22=4
goto code23
)
if errorlevel 5 (
set i22=3
goto code23
)
if errorlevel 4 (
set i22=2
goto code23
)
if errorlevel 3 (
set i22=1
goto code23
)
if errorlevel 2 (
set i22=0
goto code23
)
if errorlevel 1 goto code2
:code23
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 2    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     %i21%%i22%-       บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Tries: %g2%              ณ%sc2%บ
echo ศอออออออออออออออออออออออออฯอออผ
choice /c:z0123456789 /n
if errorlevel 11 (
set i23=9
goto code24
)
if errorlevel 10 (
set i23=8
goto code24
)
if errorlevel 9 (
set i23=7
goto code24
)
if errorlevel 8 (
set i23=6
goto code24
)
if errorlevel 7 (
set i23=5
goto code24
)
if errorlevel 6 ( 
set i23=4
goto code24
)
if errorlevel 5 (
set i23=3
goto code24
)
if errorlevel 4 (
set i23=2
goto code24
)
if errorlevel 3 (
set i23=1
goto code24
)
if errorlevel 2 (
set i23=0
goto code24
)
if errorlevel 1 goto code22
:code24
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 2    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)   (x)%i21%%i22%%i23%      บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Tries: %g2%              ณ%sc2%บ
echo ศอออออออออออออออออออออออออฯอออผ
choice /c:zx /n
if errorlevel 2 goto codecheck2
if errorlevel 1 goto code23
:codecheck2
if /i %i21% EQU %code21% (
if /i %i22% EQU %code22% (
if /i %i23% EQU %code23% (
goto coderight2
)
)
)
goto codewrong2
:codewrong2
set /a g2=%g2%-1
if /i %g2% LSS 0 goto c2done
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 2    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     ---       บ
echo บ   (*) (0) (#)    WRONG  ฺฤฤฤบ
echo บ   Tries: %g2%              ณ%sc2%บ
echo ศอออออออออออออออออออออออออฯอออผ
sleep.vbs 1
goto code2
:c2done
set c2wrong=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 2    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     ---       บ
echo บ   (*) (0) (#)           ฺฤฤฤบ
echo บ   Out of tries          ณ%sc1%บ
echo ศอออออออออออออออออออออออออฯอออผ
sleep.vbs 1
goto fi
:coderight2
set c2right=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บUse the number pad-Code 2    บ
echo บ=============================บ
echo บ   (1) (2) (3)               บ
echo บ   (4) (5) (6)               บ
echo บ   (7) (8) (9)     ---       บ
echo บ   (*) (0) (#)    RIGHT  ฺฤฤฤบ
echo บ   Tries: %g2%              ณ%sc2%บ
echo ศอออออออออออออออออออออออออฯอออผ
sleep.vbs 1
goto fi
:menucon
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ    Are you sure you want    บ
echo บ    to return to the main    บ
echo บ            menu?            บ
echo บ                             บ
echo บ      (x) Yes (Z) No         บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:xz /n
if errorlevel 2 goto pause2
if errorlevel 1 goto menu1
:exitcon
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ    Are you sure you want    บ
echo บ     to exit the game?       บ
echo บ                             บ
echo บ                             บ
echo บ      (X) Yes (Z) No         บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:zx /n
if errorlevel 2 goto exit
if errorlevel 1 goto pause3
:end
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ           Yay!!!            บ
echo บ                             บ
echo บ      Congragulations        บ
echo บ          You Win            บ
echo บ       (Press Start)         บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:p /n
if errorlevel 1 goto exit2
:exit2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ     Goodbye. And Thank      บ
echo บ     You for playing and     บ
echo บ    winning my wonderful     บ
echo บ      game. I hope you       บ
echo บ      enjoyed it greatly     บ
echo บ              -Bryan McClain บ
echo ศอออออออออออออออออออออออออออออผ
sleep.vbs 5
exit
:game
cls
set score=0
::oo ot oh of oi os oe
::to tt th tf ti ts te
::ho ht hh hf hi hs he
::fo ft fh ff fi fs fe
::io it ih if ii is ie
::so st sh sf si ss se
::eo et eh ef ei es ee
:oo
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บฒฒฒฒฒฒฒณ    ()               บ
echo บ{Start}ณ    /\               บ
echo บฒฒฒฒฒฒฒณ    /\               บ
echo บฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:dp /n
if errorlevel 2 (
set section=oo
goto pause
)
if errorlevel 1 goto ot
:ot
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        *             *      บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ            ()               บ
echo บ            /\               บ
echo บ            /\               บ
echo บฤฤฤฤฤฤฤฟ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asdp /n
if errorlevel 4 (
set section=ot
goto pause
)
if errorlevel 3 goto oh
if errorlevel 2 goto tt
if errorlevel 1 goto oo
:oh
if %key2%==1 goto ohkey
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ         ()       {/}        บ
echo บ         /\       {/}        บ
echo บ         /\       {/}        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:ap /n
if errorlevel 2 (
set section=oh
goto pause
)
if errorlevel 1 goto ot
:ohkey
if %key22%==1 goto ohun
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ         ()       {/}        บ
echo บ         /\       {/}        บ
echo บ         /\       {/}        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:axp /n
if errorlevel 3 (
set section=ohkey
goto pause
)
if errorlevel 2 goto ohun
if errorlevel 1 goto ot
:ohun
set key22=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ         ()        {0}       บ
echo บ         /\                  บ
echo บ         /\                  บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adp /n
if errorlevel 3 (
set section=ohun
goto pause
)
if errorlevel 2 goto of
if errorlevel 1 goto ot
:of
cls
echo ษอออออออออออออออออออออออออออออป
echo บ   *      #      **          บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ            ()               บ
echo บ            /\               บ
echo บ            /\               บ
echo บฤฤฤฤฤฤฤฟ            ฺฤฤฤฤฤฤฤฤบ
echo บ  *    ณ            ณ  *#*   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asdp /n
if errorlevel 4 (
set section=of
goto pause
)
if errorlevel 3 goto oi
if errorlevel 2 goto tf
if errorlevel 1 goto oh
:oi
cls
echo ษอออออออออออออออออออออออออออออป
echo บ   **         ###*     *     บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ            ()               บ
echo บ            /\               บ
echo บ            /\               บ
echo บฤฤฤฤฤฤฤฟ            ฺฤฤฤฤฤฤฤฤบ
echo บ **    ณ            ณ **     บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asdp /n
if errorlevel 4 (
set section=oi
goto pause
)
if errorlevel 3 goto os
if errorlevel 2 goto ti
if errorlevel 1 goto of
:os
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ     บ
echo บ     ()        ___     ณ     บ
echo บ     /\     / /__ \    ณ     บ
echo บ     /\     \_____/    ณ     บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู     บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:axp /n
if errorlevel 3 (
set section=os
goto pause
)
if errorlevel 2 goto es
if errorlevel 1 goto oi
:oe
if %key5%==1 goto oekey
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณฒฒฒฒEXITฒฒฒฒณ       บ
echo บ        ณฤฤฤฤฤฤฤฤฤฤฤฤณ       บ
echo บ        ณ____________ณ       บ
echo บ        ณ============ณ       บ
echo บ        ณ     ()     ณ       บ
echo บ        ณ     /\     ณ       บ
echo บ        ณ     /\     ณ       บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sp /n
if errorlevel 2 (
set section=oe
goto pause
)
if errorlevel 1 goto te
:oekey
if %key52%==1 goto oeun
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณฒฒฒฒEXITฒฒฒฒณ       บ
echo บ        ณฤฤฤฤฤฤฤฤฤฤฤฤณ       บ
echo บ        ณ____________ณ       บ
echo บ        ณ============ณ       บ
echo บ        ณ     ()     ณ       บ
echo บ        ณ     /\     ณ       บ
echo บ        ณ     /\     ณ       บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sxp /n
if errorlevel 3 (
set section=oekey
goto pause
)
if errorlevel 2 goto oeun
if errorlevel 1 goto te
:oeun
set key52=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณฒฒฒฒEXITฒฒฒฒณ       บ
echo บ        ณฤฤฤฤฤฤฤฤฤฤฤฤณ       บ
echo บ        ณ            ณ       บ
echo บ        ณ            ณ       บ
echo บ        ณ     ()     ณ       บ
echo บ        ณ     /\     ณ       บ
echo บ        ณ     /\     ณ       บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsp /n
if errorlevel 4 (
set section=oeun
goto pause
)
if errorlevel 2 goto te
if errorlevel 1 goto oeend
:oeend
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณฒฒฒฒE()Tฒฒฒฒณ       บ
echo บ        ณฤฤฤฤฤ/\ฤฤฤฤฤณ       บ
echo บ        ณ     /\     ณ       บ
echo บ        ณ            ณ       บ
echo บ        ณ            ณ       บ
echo บ        ณ            ณ       บ
echo บ        ณ            ณ       บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sxp /n
if errorlevel 3 (
set section=oeend
goto pause
)
if errorlevel 2 goto end
if errorlevel 1 goto oeun
:to
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ        ณ                    บ
echo บ        ณ   ()               บ
echo บ        ณ   /\               บ
echo บ        ณ   /\      ฺฤฤฤฤฤฤฤฤบ
echo บ        ณ           ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sdp /n
if errorlevel 3 (
set section=to
goto pause
)
if errorlevel 2 goto tt
if errorlevel 1 goto ho3
:tt
cls
echo ษอออออออออออออออออออออออออออออป
echo บ      ณ             ณ  *     บ
echo บฤฤฤฤฤฤฤ             ภฤฤฤฤฤฤฤฤบ
echo บ            ()               บ
echo บ            /\               บ
echo บ            /\               บ
echo บฤฤฤฤฤฤฤฟ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asdwp /n
if errorlevel 5 (
set section=tt
goto pause
)
if errorlevel 4 goto ot
if errorlevel 3 goto th3
if errorlevel 2 goto ht
if errorlevel 1 goto to
:th3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ   ()        +               บ
echo บ   /\      (---              บ
echo บ   /\        +               บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:ap /n
if errorlevel 2 (
set section=th3
goto pause
)
if errorlevel 1 goto tt
:th2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤ+ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ             ()              บ
echo บ             /\              บ
echo บ             /\              บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤ+ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adp /n
if errorlevel 3 (
set section=th2
goto pause
)
if errorlevel 2 goto th
if errorlevel 1 goto th3
:th
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ             +         ()    บ
echo บ           (---        /\    บ
echo บ             +         /\    บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adp /n
if errorlevel 3 (
set section=th
goto pause
)
if errorlevel 2 goto tf
if errorlevel 1 goto th2
:tf
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ            ณ       บ
echo บฤฤฤฤฤฤฤฤู            ณ       บ
echo บ             ()      ณ       บ
echo บ             /\      ณ       บ
echo บ             /\      ณ       บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู       บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awp /n
if errorlevel 3 (
set section=tf
goto pause
)
if errorlevel 2 goto of
if errorlevel 1 goto th
:ti
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บ        ณ    ()     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ภฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wdp /n
if errorlevel 3 (
set section=ti
goto pause
)
if errorlevel 2 goto ti2
if errorlevel 1 goto oi
:ti2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บ        ณ    ()     ภ--------บ
echo บ        ณ    /\              บ
echo บ        ณ    /\     ฺ--------บ
echo บ        ภฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wdp /n
if errorlevel 3 (
set section=ti2
goto pause
)
if errorlevel 2 goto ts
if errorlevel 1 goto oi
:ts
if %tsd%==1 goto ts2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ--------------------------   บ
echo บ       ()        /o\     =   บ
echo บ       /\        \o/     =   บ
echo บ-------/\-----------------   บ
echo บ                             บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:axp /n
if errorlevel 3 (
set section=ts
goto pause
)
if errorlevel 2 (
set /a d=%d%+1
goto ts2
)
if errorlevel 1 goto ti
:ts2
set tsd=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ--------------------------   บ
echo บ       ()                =   บ
echo บ       /\                =   บ
echo บ-------/\-----------------   บ
echo บ                             บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:ap /n
if errorlevel 2 (
set section=ts2
goto pause
)
if errorlevel 1 goto ti
:te
if %bosswin%==1 goto te2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ///////////ณ        บ
echo บ    ฺฤฤฤู   ____    ภฤฤฤฟ    บ
echo บ    ณ   ___/0)  \       ณ    บ
echo บ    ณ   \\\ณ () ณ       ณ    บ
echo บ    ณ      /=/\=\       ณ    บ
echo บ    ภฤฤฤฟ    /\     ฺฤฤฤู    บ
echo บ        ณ           ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sxp /n
if errorlevel 3 (
set section=te
goto pause
)
if errorlevel 2 goto boss
if errorlevel 1 goto he
:te2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บ    ฺฤฤฤู     ()    ภฤฤฤฟ    บ
echo บ    ณ         /\        ณ    บ
echo บ    ณ         /\        ณ    บ
echo บ    ณ                   ณ    บ
echo บ    ภฤฤฤฟ           ฺฤฤฤู    บ
echo บ        ณ           ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsp /n
if errorlevel 3 (
set section=te2
goto pause
)
if errorlevel 2 goto he
if errorlevel 1 goto oe
:ho3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ    ()     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ++++/=\++++ณ        บ
echo บ        ณ    ณ ณ    ณ        บ
echo บ        ณ    ณ ณ    ณ        บ
echo บ        ณ           ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wp /n
if errorlevel 2 (
set section=ho3
goto pause
)
if errorlevel 1 goto to
:ho2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บ        ณ           ณ        บ
echo บ        ณ     ()    ณ        บ
echo บ        +++   /\  +++        บ
echo บ        ณ     /\    ณ        บ
echo บ        ณ           ณ        บ
echo บ        ณ           ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsp /n
if errorlevel 3 (
set section=ho2
goto pause
)
if errorlevel 2 goto ho
if errorlevel 1 goto ho3
:ho
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บ        ณ           ณ        บ
echo บ        ณ           ณ        บ
echo บ        ณ++++/=\++++ณ        บ
echo บ        ณ    ()     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ    /\     ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:swp /n
if errorlevel 3 (
set section=ho
goto pause
)
if errorlevel 2 goto ho2
if errorlevel 1 goto fo
:ht
cls
echo ษอออออออออออออออออออออออออออออป
echo บ    #  ณ            ณ  *     บ
echo บ *     ณ            ภฤฤฤฤฤฤฤฤบ
echo บ       ณ    ()               บ
echo บ   *   ณ    /\               บ
echo บ       ณ    /\               บ
echo บ   #   ณ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsdp /n
if errorlevel 4 (
set section=ht
goto pause
)
if errorlevel 3 goto hh
if errorlevel 2 goto ft
if errorlevel 1 goto tt
:hh
cls
echo ษอออออออออออออออออออออออออออออป
echo บ   *      #      **          บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ            ()               บ
echo บ            /\               บ
echo บ            /\               บ
echo บฤฤฤฤฤฤฤฟ            ฺฤฤฤฤฤฤฤฤบ
echo บ  *    ณ            ณ  *#*   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asdp /n
if errorlevel 4 (
set section=hh
goto pause
)
if errorlevel 3 goto hf
if errorlevel 2 goto fh
if errorlevel 1 goto ht
:hf
cls
echo ษอออออออออออออออออออออออออออออป
echo บ   **         ###*     *     บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ            ()               บ
echo บ            /\               บ
echo บ            /\               บ
echo บฤฤฤฤฤฤฤฟ            ฺฤฤฤฤฤฤฤฤบ
echo บ **    ณ            ณ **     บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asdp /n
if errorlevel 4 (
set section=hf
goto pause
)
if errorlevel 3 goto hi
if errorlevel 2 goto ff3
if errorlevel 1 goto hh
:hi
cls
echo ษอออออออออออออออออออออออออออออป
echo บ   *      #      **          บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ            ()               บ
echo บ            /\               บ
echo บ            /\               บ
echo บฤฤฤฤฤฤฤฟ            ฺฤฤฤฤฤฤฤฤบ
echo บ  *    ณ            ณ  *#*   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asdp /n
if errorlevel 4 (
set section=hi
goto pause
)
if errorlevel 3 goto hs
if errorlevel 2 goto fi
if errorlevel 1 goto hf
:hs
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ          ()   ณ             บ
echo บ          /\   ณ             บ
echo บ          /\   ณ             บ
echo บฤฤฤฤฤฤฤฤฟ      ณ     ฺฤฤฤฤฤฤฤบ
echo บ        ณ      ณ     ณ       บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asp /n
if errorlevel 3 (
set section=hs
goto pause
)
if errorlevel 2 goto fs
if errorlevel 1 goto hi
:hs2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ               ณ  ()         บ
echo บ               ณ  /\         บ
echo บ               ณ  /\         บ
echo บฤฤฤฤฤฤฤฤฟ      ณ     ฺฤฤฤฤฤฤฤบ
echo บ        ณ      ณ     ณ       บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sdp /n
if errorlevel 3 (
set section=hs2
goto pause
)
if errorlevel 2 goto he2
if errorlevel 1 goto fs2
:he2
if %key3%==1 goto he22
cls
echo ษอออออออออออออออออออออออออออออป
echo บ           ณ        ณ        บ
echo บฤฤฤฤฤฤฤฟ   ณ        ณ        บ
echo บ()     ณ   ณ        ณ        บ
echo บ/\  /\ ณ   ณ        ณ        บ
echo บ/\     ณ   ณ        ณ        บ
echo บฤฤฤฤฤฤฤู   ณ        ณ        บ
echo บ           ณ        ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:axp /n
if errorlevel 3 (
set section=he2
goto pause
)
if errorlevel 2 goto he22
if errorlevel 1 goto hs2
:he22
set key3=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ           ณ        ณ        บ
echo บฤฤฤฤฤฤฤฟ   ณ        ณ        บ
echo บ()     ณ   ณ        ณ        บ
echo บ/\     ณ   ณ        ณ        บ
echo บ/\     ณ   ณ        ณ        บ
echo บฤฤฤฤฤฤฤู   ณ        ณ        บ
echo บ           ณ        ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:ap /n
if errorlevel 2 (
set section=he22
goto pause
)
if errorlevel 1 goto hs2
:he
cls
echo ษอออออออออออออออออออออออออออออป
echo บ           ณ        ณ        บ
echo บฤฤฤฤฤฤฤฟ   ณ        ณ        บ
echo บ       ณ   ณ        ณ        บ
echo บ       ณ   ณ   ()   ณ        บ
echo บ       ณ   ณ   /\   ณ        บ
echo บฤฤฤฤฤฤฤู   ณ   /\   ณ        บ
echo บ           ณ        ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:swp /n
if errorlevel 3 (
set section=he
goto pause
)
if errorlevel 2 goto te
if errorlevel 1 goto fe
:fo
if %key1%==1 goto fo2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ    #  ณ            ณ  *     บ
echo บ *     ณ            ภฤฤฤฤฤฤฤฤบ
echo บ       ณ    ()               บ
echo บ   *   ณ    /\   /\          บ
echo บ       ณ    /\               บ
echo บ   #   ณ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsdxp /n
if errorlevel 5 (
set section=fo
goto pause
)
if errorlevel 4 goto fo2
if errorlevel 3 goto ft
if errorlevel 2 goto io
if errorlevel 1 goto ho
:fo2
set key1=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ    #  ณ            ณ  *     บ
echo บ *     ณ            ภฤฤฤฤฤฤฤฤบ
echo บ       ณ    ()               บ
echo บ   *   ณ    /\               บ
echo บ       ณ    /\               บ
echo บ   #   ณ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsdp /n
if errorlevel 4 (
set section=fo2
goto pause
)
if errorlevel 3 goto ft
if errorlevel 2 goto io
if errorlevel 1 goto ho
:ft
cls
echo ษอออออออออออออออออออออออออออออป
echo บ     ณ () ณ                  บ
echo บฤฤฤฤฤู /\ ณ     ฺฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ       /\ ณ     ณ            บ
echo บ          ณ     ณ            บ
echo บฤฤฤฤฤฤฤฤฤฤด     ณ            บ
echo บ  ณ       ณ     ณ        ฺฤฤฤบ
echo บ  ณ       ณ     ณ        ณ   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awp /n
if errorlevel 3 (
set section=ft
goto pause
)
if errorlevel 2 goto ht
if errorlevel 1 goto fo
:ft2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ     ณ    ณ                  บ
echo บฤฤฤฤฤู    ณ     ฺฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ          ณ     ณ  ()        บ
echo บ          ณ     ณ  /\        บ
echo บฤฤฤฤฤฤฤฤฤฤด     ณ  /\        บ
echo บ  ณ       ณ     ณ        ฺฤฤฤบ
echo บ  ณ       ณ     ณ        ณ   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sdp /n
if errorlevel 3 (
set section=ft2
goto pause
)
if errorlevel 2 goto fh
if errorlevel 1 goto it2
:ft3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ     ณ    ณ                  บ
echo บฤฤฤฤฤู    ณ     ฺฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ          ณ     ณ            บ
echo บ          ณ     ณ            บ
echo บฤฤฤฤฤฤฤฤฤฤด     ณ            บ
echo บ  ณ  ()   ณ     ณ        ฺฤฤฤบ
echo บ  ณ  /\   ณ     ณ        ณ   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sdp /n
if errorlevel 3 (
set section=ft3
goto pause
)
if errorlevel 2 goto fh
if errorlevel 1 goto it
:fh
if %key1%==1 goto fh2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ณ        บ
echo บ  {/}       ()      ณ        บ
echo บ  {/}       /\      ณ        บ
echo บ  {/}       /\      ณ        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wp /n
if errorlevel 2 (
set section=fh
goto pause
)
if errorlevel 1 goto hh
:fh2
if %key12%==1 goto fh3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ณ        บ
echo บ  {/}       ()      ณ        บ
echo บ  {/}       /\      ณ        บ
echo บ  {/}       /\      ณ        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wxp /n
if errorlevel 3 (
set section=fh
goto pause
)
if errorlevel 2 goto fh3
if errorlevel 1 goto hh
:fh3
set key12=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ณ        บ
echo บ  {o}       ()      ณ        บ
echo บ            /\      ณ        บ
echo บ            /\      ณ        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wap /n
if errorlevel 3 (
set section=fh
goto pause
)
if errorlevel 2 goto ft2
if errorlevel 1 goto hh
:ff
cls
echo ษอออออออออออออออออออออออออออออป
echo บ    #  ณ    /=\     ณ  *     บ
echo บ *     ณ++++ณ ณ+++++ภฤฤฤฤฤฤฤฤบ
echo บ       ณ    ()               บ
echo บ   *   ณ    /\               บ
echo บ       ณ    /\               บ
echo บ   #   ณ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsdp /n
if errorlevel 4 (
set section=ff
goto pause
)
if errorlevel 3 goto fi
if errorlevel 2 goto if3
if errorlevel 1 goto ff2
:ff2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ    #  ณ     ()     ณ  *     บ
echo บ *     ณ+++  /\  +++ภฤฤฤฤฤฤฤฤบ
echo บ       ณ     /\              บ
echo บ   *   ณ                     บ
echo บ       ณ                     บ
echo บ   #   ณ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsp /n
if errorlevel 3 (
set section=ff2
goto pause
)
if errorlevel 2 goto ff
if errorlevel 1 goto ff3
:ff3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ    #  ณ     /\     ณ  *     บ
echo บ *     ณ++++ณ ณ+++++ภฤฤฤฤฤฤฤฤบ
echo บ       ณ                     บ
echo บ   *   ณ                     บ
echo บ       ณ                     บ
echo บ   #   ณ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wp /n
if errorlevel 2 (
set section=ff3
goto pause
)
if errorlevel 1 goto hf
:fi
if %c2right%==1 goto fiopen
if %c2wrong%==1 goto ficlose
cls
echo ษอออออออออออออออออออออออออออออป
echo บ ==  =  ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ณ ===    บ
echo บ   {}       ()      ณ      ==บ
echo บ   {}[#]    /\      ณ        บ
echo บ   {}       /\      ณ        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู =======บ
echo บ ====        ====            บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:xwp /n
if errorlevel 3 (
set section=fi
goto pause
)
if errorlevel 2 goto hi
if errorlevel 1 goto code2
:fiopen
cls
echo ษอออออออออออออออออออออออออออออป
echo บ ==  =  ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ณ ===    บ
echo บ            ()      ณ      ==บ
echo บ     [+]    /\      ณ        บ
echo บ            /\      ณ        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู =======บ
echo บ ====        ====            บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wap /n
if errorlevel 3 (
set section=fiopen
goto pause
)
if errorlevel 2 goto ff
if errorlevel 1 goto hi
:ficlose
cls
echo ษอออออออออออออออออออออออออออออป
echo บ ==  =  ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ณ ===    บ
echo บ   {}       ()      ณ      ==บ
echo บ   {}[x]    /\      ณ        บ
echo บ   {}       /\      ณ        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู =======บ
echo บ ====        ====            บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wp /n
if errorlevel 2 (
set section=ficlose
goto pause
)
if errorlevel 1 goto hi
:fs
cls
echo ษอออออออออออออออออออออออออออออป
echo บ ณ           ณ             ณ บ
echo บ ณ           ณ             ณ บ
echo บ ณ           ณ             ณ บ
echo บ ณ   ()      ณ             ณ บ
echo บ ณ   /\      ณ             ณ บ
echo บ ณ   /\      ณ             ณ บ
echo บ ภฤฤฤฤฤฤฤฤฤฤฤด             ณ บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wp /n
if errorlevel 2 (
set section=fs
goto pause
)
if errorlevel 1 goto hs
:fs2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ ณ           ณ             ณ บ
echo บ ณ           ณ             ณ บ
echo บ ณ           ณ             ณ บ
echo บ ณ           ณ    ()       ณ บ
echo บ ณ           ณ    /\       ณ บ
echo บ ณ           ณ    /\       ณ บ
echo บ ภฤฤฤฤฤฤฤฤฤฤฤด             ณ บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsp /n
if errorlevel 3 (
set section=fs2
goto pause
)
if errorlevel 2 goto ie
if errorlevel 1 goto hs2
:fe
if %key4%==1 goto fe2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บ        ณ           ณ        บ
echo บ        ณ///////////ณ        บ
echo บ        ณ    ()     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ           ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sp /n
if errorlevel 2 (
set section=fe
goto pause
)
if errorlevel 1 goto ie2
:fe2
if %key42%==1 goto fe3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บ        ณ           ณ        บ
echo บ        ณ///////////ณ        บ
echo บ        ณ    ()     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ           ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sxp /n
if errorlevel 3 (
set seciton=fe2
goto pause
)
if errorlevel 2 goto fe3
if errorlevel 1 goto ie2
:fe3
set key42=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บ        ณ           ณ        บ
echo บ        ณo)       (0ณ        บ
echo บ        ณ    ()     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ           ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsp /n
if errorlevel 3 (
set section=fe3
goto pause
)
if errorlevel 2 goto ie2
if errorlevel 1 goto he
:io
if %c1right%==1 goto iopen
if %c1wrong%==1 goto ioc
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ  =  ===บ
echo บ ==  ===ณ           ภฤฤฤฤฤฤฤฤบ
echo บ        ณ   ()          {/}  บ
echo บ ===    ณ   /\       [#]{/}  บ
echo บ   ==== ณ   /\          {/}  บ
echo บ        ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ ====         ===   ==   === บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wxp /n
if errorlevel 3 (
set section=io
goto pause
)
if errorlevel 2 goto code1
if errorlevel 1 goto fo
:iopen
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ  =  ===บ
echo บ ==  ===ณ           ภฤฤฤฤฤฤฤฤบ
echo บ        ณ   ()          {o}  บ
echo บ ===    ณ   /\       [+]     บ
echo บ   ==== ณ   /\               บ
echo บ        ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ ====         ===   ==   === บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wdp /n
if errorlevel 3 (
set section=iopen
goto pause
)
if errorlevel 2 goto it
if errorlevel 1 goto fo
:ioc
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ  =  ===บ
echo บ ==  ===ณ           ภฤฤฤฤฤฤฤฤบ
echo บ        ณ   ()          {/}  บ
echo บ ===    ณ   /\       [x]{/}  บ
echo บ   ==== ณ   /\          {/}  บ
echo บ        ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ ====         ===   ==   === บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wp /n
if errorlevel 2 (
set section=ioc
goto pause
)
if errorlevel 1 goto fo
:it
cls
echo ษอออออออออออออออออออออออออออออป
echo บ   ณ    ณ        ณ    ณ      บ
echo บฤฤฤู    ณ        ณ    ณ      บ
echo บ ()     ณ        ณ    ณ      บ
echo บ /\     ณ        ณ    ภฤฤฤฤฤฤบ
echo บ /\     ณ        ณ           บ
echo บฤฤฤฟ    ณ        ณ           บ
echo บ   ณ    ณ        ภฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awsp /n
if errorlevel 4 (
set section=it
goto pause
)
if errorlevel 3 goto st
if errorlevel 2 goto ft3
if errorlevel 1 goto io
:it2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ   ณ    ณ        ณ    ณ      บ
echo บฤฤฤู    ณ        ณ    ณ      บ
echo บ        ณ        ณ () ณ      บ
echo บ        ณ        ณ /\ ภฤฤฤฤฤฤบ
echo บ        ณ        ณ /\        บ
echo บฤฤฤฟ    ณ        ณ           บ
echo บ   ณ    ณ        ภฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wdp /n
if errorlevel 3 (
set section=it2
goto pause
)
if errorlevel 2 goto ih
if errorlevel 1 goto ft2
:ih
cls
echo ษอออออออออออออออออออออออออออออป
echo บ   *      #      **          บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ            ()               บ
echo บ            /\               บ
echo บ            /\               บ
echo บฤฤฤฤฤฤฤฟ            ฺฤฤฤฤฤฤฤฤบ
echo บ  *    ณ            ณ  *#*   บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asdp /n
if errorlevel 4 (
set section=ih
goto pause
)
if errorlevel 3 goto if
if errorlevel 2 goto sh
if errorlevel 1 goto it2
:if
if %ifd%==1 goto if5
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                   ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤฟ       ณ         บ
echo บ   ()      ณ       ณ  /o\    บ
echo บ   /\      ณ       ณ  \o/    บ
echo บ   /\      ณ       ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤู       ภฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adp /n
if errorlevel 3 (
set section=if
goto pause
)
if errorlevel 2 goto if2
if errorlevel 1 goto ih
:if2
if %ifd%==1 goto if6
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                   ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤฟ       ณ         บ
echo บ   ()      ภ---=   ณ  /o\    บ
echo บ   /\          =   ณ  \o/    บ
echo บ   /\      ฺ---=   ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤู       ภฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adp /n
if errorlevel 3 (
set section=if2
goto pause
)
if errorlevel 2 goto c1r
if errorlevel 1 goto ih
:if3
if %ifd%==1 goto if4
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                   ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤฟ       ณ         บ
echo บ           ณ       ณ  /o\  ()บ
echo บ           ณ       ณ  \o/  /\บ
echo บ           ณ       ณ       /\บ
echo บฤฤฤฤฤฤฤฤฤฤฤู       ภฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wxp /n
if errorlevel 3 (
set section=if3
goto pause
)
if errorlevel 2 (
set /a d=%d%+1
set ifd=1
goto if4
)
if errorlevel 1 goto ff
:if4
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                   ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤฟ       ณ         บ
echo บ           ณ       ณ       ()บ
echo บ           ณ       ณ       /\บ
echo บ           ณ       ณ       /\บ
echo บฤฤฤฤฤฤฤฤฤฤฤู       ภฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wp /n
if errorlevel 2 (
set section=if4
goto pause
)
if errorlevel 1 goto ff
:if5
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                   ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤฟ       ณ         บ
echo บ   ()      ณ       ณ         บ
echo บ   /\      ณ       ณ         บ
echo บ   /\      ณ       ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤู       ภฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adp /n
if errorlevel 3 (
set section=if
goto pause
)
if errorlevel 2 goto if2
if errorlevel 1 goto ih
:if6
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                   ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤฟ       ณ         บ
echo บ   ()      ภ---=   ณ         บ
echo บ   /\          =   ณ         บ
echo บ   /\      ฺ---=   ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤู       ภฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adp /n
if errorlevel 3 (
set section=if2
goto pause
)
if errorlevel 2 goto c1r
if errorlevel 1 goto ih
:c1r
set sc1=%code11%%code12%%code13%
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ      Sectet Code 1:         บ
echo บ           %code11%%code12%%code13%               บ
echo บ                             บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:z /n
if errorlevel 1 goto if
:if3
if ifd=1 goto if4
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                   ณ      () บ
echo บฤฤฤฤฤฤฤฤฤฤฤฟ       ณ      /\ บ
echo บ           ณ       ณ  /o\ /\ บ
echo บ           ณ       ณ  \o/    บ
echo บ           ณ       ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤู       ภฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wxp /n
if errorlevel 3 (
set section=if3
goto pause
)
if errorlevel 2 (
set /a d=%d%+1
goto if4
)
if errorlevel 1 goto ff
:if4
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                   ณ      () บ
echo บฤฤฤฤฤฤฤฤฤฤฤฟ       ณ      /\ บ
echo บ           ณ       ณ      /\ บ
echo บ           ณ       ณ         บ
echo บ           ณ       ณ         บ
echo บฤฤฤฤฤฤฤฤฤฤฤู       ภฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wp /n
if errorlevel 2 (
set section=if4
goto pause
)
if errorlevel 1 goto ff
:ii
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ        ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ        ณ                    บ
echo บ        ณ   ()               บ
echo บ        ณ   /\               บ
echo บ        ณ   /\      ฺฤฤฤฤฤฤฤฤบ
echo บ        ณ           ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sdp /n
if errorlevel 3 (
set section=ii
goto pause 
)
if errorlevel 2 goto is
if errorlevel 1 goto si
:is
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ    บ
echo บ     ()                 ณ    บ
echo บ     /\                 ณ    บ
echo บ     /\                 ณ    บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู    บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asp /n
if errorlevel 3 (
set section=is
goto pause
)
if errorlevel 2 goto is2
if errorlevel 1 goto ii
:is2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ    บ
echo บ     ()                 ณ    บ
echo บ     /\                 ณ    บ
echo บ     /\                 ณ    บ
echo บฤฤฤฤฤฤฤ__________ฤฤฤฤฤฤฤู    บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:asp /n
if errorlevel 3 (
set section=is2
goto pause
)
if errorlevel 2 goto sc2
if errorlevel 1 goto ii
:sc2
set sc2=%code21%%code22%%code23%
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ      Sectet Code 2:         บ
echo บ           %code21%%code22%%code23%               บ
echo บ                             บ
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:z /n
if errorlevel 1 goto is
:ie
cls
echo ษอออออออออออออออออออออออออออออป
echo บ    #  ณ            ณ  *     บ
echo บ *     ณ            ภฤฤฤฤฤฤฤฤบ
echo บ       ณ    ()               บ
echo บ   *   ณ    /\               บ
echo บ       ณ    /\               บ
echo บ   #   ณ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsdp /n
if errorlevel 4 (
set section=ie
goto pause
)
if errorlevel 3 goto ie2
if errorlevel 2 goto ss
if errorlevel 1 goto fs2
:ie2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ณ        บ
echo บ            ()      ณ        บ
echo บ            /\      ณ        บ
echo บ            /\      ณ        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awp /n
if errorlevel 3 (
set section=ie2
goto pause
)
if errorlevel 2 goto fe
if errorlevel 1 goto ie
:so
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ    =------------------------บ
echo บ    =  ____       ()         บ
echo บ    = / __ \      /\         บ
echo บ    = \ \__/      /\         บ
echo บ    =------------------------บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:dxp /n
if errorlevel 3 (
set section=so
goto pause
)
if errorlevel 2 goto ee
if errorlevel 1 goto st
:st
if %std%==1 goto st02
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ  ()       ณ        บ
echo บ        ณ  /\  /o\  ณ        บ
echo บ        ณ  /\  \o/  ณ        บ
echo บ        ณ           ณ        บ
echo บ        ภฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awxp /n
if errorlevel 4 (
set section=st
goto pause
)
if errorlevel 3 (
set /a d=%d%+1
goto st02
)
if errorlevel 2 goto it
if errorlevel 1 goto st20
:st02
set std=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ  ()       ณ        บ
echo บ        ณ  /\       ณ        บ
echo บ        ณ  /\       ณ        บ
echo บ        ณ           ณ        บ
echo บ        ภฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awp /n
if errorlevel 3 (
set section=st02
goto pause
)
if errorlevel 2 goto it
if errorlevel 1 goto st22
:st20
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ  ()       ณ        บ
echo บ--------ู  /\  /o\  ณ        บ
echo บ           /\  \o/  ณ        บ
echo บ--------ฟ           ณ        บ
echo บ        ภฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awxp /n
if errorlevel 4 (
set section=st20
goto pause
)
if errorlevel 3 (
set std=1
set /a d=%d%+1
goto st22
:st22 
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ  ()       ณ        บ
echo บ--------ู  /\       ณ        บ
echo บ           /\       ณ        บ
echo บ--------ฟ           ณ        บ
echo บ        ภฤฤฤฤฤฤฤฤฤฤฤู        บ
echo บ                             บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awp /n
if errorlevel 3 (
set section=st22
goto pause
)
if errorlevel 2 goto it
if errorlevel 1 goto so
:sh
cls
echo ษอออออออออออออออออออออออออออออป
echo บ    #  ณ            ณ  *     บ
echo บ *     ณ            ภฤฤฤฤฤฤฤฤบ
echo บ       ณ    ()               บ
echo บ   *   ณ    /\               บ
echo บ       ณ    /\               บ
echo บ   #   ณ            ฺฤฤฤฤฤฤฤฤบ
echo บ   *   ณ            ณ   *    บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wsdp /n
if errorlevel 4 (
set section=sh
goto pause
)
if errorlevel 3 goto sf
if errorlevel 2 goto eh
if errorlevel 1 goto ih
:sf
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ         ()                  บ
echo บ         /\                  บ
echo บ         /\                  บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adp /n
if errorlevel 3 (
set section=sf
goto pause
)
if errorlevel 2 goto si
if errorlevel 1 goto sh
:si
cls
echo ษอออออออออออออออออออออออออออออป
echo บ             ณ   #       *   บ
echo บ             ณ      *    #   บ
echo บ     ()      ณ  *     #      บ
echo บ     /\      รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ     /\      ณ               บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤด               บ
echo บ    *    *   ณ               บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awp /n
if errorlevel 3 (
set section=si
goto pause
)
if errorlevel 2 goto ii
if errorlevel 1 goto sf
:si2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ             ณ   #       *   บ
echo บ             ณ      *    #   บ
echo บ             ณ  *     #      บ
echo บ             รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ             ณ     ()        บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤด     /\        บ
echo บ    *    *   ณ     /\        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sdp /n
if errorlevel 3 (
set section=si2
goto pause
)
if errorlevel 2 goto ss
if errorlevel 1 goto ei
:ss
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ            ณ       บ
echo บฤฤฤฤฤฤฤฤู            ณ       บ
echo บ             ()      ณ       บ
echo บ             /\      ณ       บ
echo บ             /\      ณ       บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู       บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awp /n
if errorlevel 3 (
set section=ss
goto pause
)
if errorlevel 2 goto ie
if errorlevel 1 goto si2
:se
if %sed%==1 goto se2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ                             บ
echo บ        ฺฤฤฤฤฤฤฤฤฤฤฤฟ        บ
echo บ        ณ   ()      ณ        บ
echo บ        ณ   /\  /o\ ณ        บ
echo บ        ณ   /\  \o/ ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sxp /n
if errorlevel 3 (
set section=se
goto pause
)
if errorlevel 2 (
set sed=1
set /a d=%d%+1
goto se2
)
if errorlevel 1 goto ee
:se2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ                             บ
echo บ                             บ
echo บ        ฺฤฤฤฤฤฤฤฤฤฤฤฟ        บ
echo บ        ณ   ()      ณ        บ
echo บ        ณ   /\      ณ        บ
echo บ        ณ   /\      ณ        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:sp /n
if errorlevel 2 (
set section=se2
goto pause
)
if errorlevel 1 goto ee
:eo
if %key2%==1 goto eo2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ      ณ            ()        บ
echo บ      ณ  /\        /\        บ
echo บ      ณ            /\        บ
echo บ      ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:dxp /n
if errorlevel 3 (
set section=eo
goto pause
)
if errorlevel 2 goto eo2
if errorlevel 1 goto et
:eo2
set key2=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ      ณ            ()        บ
echo บ      ณ            /\        บ
echo บ      ณ            /\        บ
echo บ      ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:dp /n
if errorlevel 2 (
set section=eo2
goto pause
)
if errorlevel 1 goto et
:et
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ         ()                  บ
echo บ         /\                  บ
echo บ         /\                  บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:adp /n
if errorlevel 3 (
set section=et
goto pause
)
if errorlevel 2 goto eh
if errorlevel 1 goto eo
:eh
if %key3%==1 goto eh2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ภฤฤฤฤฤฤฤฤบ
echo บ         ()             {/}  บ
echo บ         /\             {/}  บ
echo บ         /\             {/}  บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awp /n
if errorlevel 3 (
set section=eh
goto pause
)
if errorlevel 2 goto sh
if errorlevel 1 goto et
:eh2
if %key32%==1 goto eh3
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ภฤฤฤฤฤฤฤฤบ
echo บ         ()             {/}  บ
echo บ         /\             {/}  บ
echo บ         /\             {/}  บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awxp /n
if errorlevel 4 (
set section=eh2
goto pause
)
if errorlevel 3 goto eh3
if errorlevel 2 goto sh
if errorlevel 1 goto et
:eh3
set key32=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บฤฤฤฤฤฤฤฤู           ภฤฤฤฤฤฤฤฤบ
echo บ         ()             {o}  บ
echo บ         /\                  บ
echo บ         /\                  บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:awdp /n
if errorlevel 4 (
set section=eh3
goto pause
)
if errorlevel 3 goto ef
if errorlevel 2 goto sh
if errorlevel 1 goto et
:ef
if %key4%==1 goto ef2
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ    บ
echo บ     ()                 ณ    บ
echo บ     /\      /\         ณ    บ
echo บ     /\                 ณ    บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู    บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:axp /n
if errorlevel 3 (
set section=ef
goto pause
)
if errorlevel 2 goto ef2
if errorlevel 1 goto eh
:ef2
set key4=1
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ    บ
echo บ     ()                 ณ    บ
echo บ     /\                 ณ    บ
echo บ     /\                 ณ    บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู    บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:ap /n
if errorlevel 2 (
set section=ef2
goto pause
)
if errorlevel 1 goto eh
:ei
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ           ณ        บ
echo บ        ณ           ภฤฤฤฤฤฤฤฤบ
echo บ        ณ                    บ
echo บ        ณ      ()            บ
echo บ        ณ      /\            บ
echo บ        ณ      /\            บ
echo บ        ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
echo ศอออออออออออออออออออออออออออออผ
choice /c:dwp /n
if errorlevel 3 (
set section=ei
goto pause
)
if errorlevel 2 goto si2
if errorlevel 1 goto es
:es
cls
echo ษอออออออออออออออออออออออออออออป
echo บ                             บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ    บ
echo บ     ()          ____   ณ    บ
echo บ     /\         / _  \  ณ    บ
echo บ     /\          \___/  ณ    บ
echo บฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู    บ
echo บ                             บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:axp /n
if errorlevel 3 (
set section=es
goto pause
)
if errorlevel 2 goto os
if errorlevel 1 goto ei
:ee
cls
echo ษอออออออออออออออออออออออออออออป
echo บ        ณ    ()     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ    /\     ณ        บ
echo บ        ณ   ____    ณ        บ
echo บ        ณ  /__  \   ณ        บ
echo บ        ณ   \___/   ณ        บ
echo บ        ภฤฤฤฤฤฤฤฤฤฤฤู        บ
echo ศอออออออออออออออออออออออออออออผ
choice /c:wxp /n
if errorlevel 3 (
set section=ee
goto pause
)
if errorlevel 2 goto so
if errorlevel 1 goto se


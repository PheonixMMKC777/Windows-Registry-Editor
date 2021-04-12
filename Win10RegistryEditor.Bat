@ECHO OFF
title Blondekid's Win10RegistryEditor
REM PROPERTY OF BLONDEKID!! IF YOU WANT TO SCREW WITH IT MAKE A FORK ON GITHUB!!
color 03

setlocal enabledelayedexpansion
:HOME
CD %USERPROFILE%/Appdata
IF EXIST Blondekid (ECHO File check passed) ELSE (MD Blondekid)
CD Blondekid

ECHO Which Program do you want?

ECHO 1 = Hilight Editor
ECHO 2 = Custom Control Panel Function
ECHO 3 = Disable Cortana
ECHO 4 = Custom CMD font
ECHO H = HELP

CHOICE /C 1234H
IF ERRORLEVEL ==5 GOTO HELP
IF ERRORLEVEL ==4 GOTO NOTREADY
IF ERRORLEVEL ==3 GOTO DSBCTA
IF ERRORLEVEL ==2 GOTO CPANC
IF ERRORLEVEL ==1 GOTO HLSTART

REM HEY DUMMY REMEBER TO FINISH
rem CMDFC

:NOTREADY
ECHO =======================================
ECHO Still in development :(
ECHO =======================================
GOTO HOME

:HELP
ECHO =======================================
ECHO Hilight Editor - A tool that edits the way text is hilighted, Like on your desktop icons and text.
ECHO =======================================
ECHO Custom control panel function - Adds a custom control panel function that does what you define.
ECHO =======================================
ECHO Disable Cortana - Truly Disables Cortana :)
ECHO =======================================
ECHO Custom CMD Font - Takes a .TTF You Define and loads it into the command prompt.
ECHO =======================================
GOTO HOME

:NOTREADY

:HLSTART
TITLE BlondeKid's Hilight Editor
ECHO =======================================
ECHO HILIGHT EDITOR 
ECHO =======================================
ECHO REMEMBER THIS IS RGB, ONLY 1-255

ECHO =======================================
SET /P rh=ECHO Whats the Red value? 
ECHO =======================================
SET /P gh=ECHO Whats the Green value? 
ECHO =======================================
SET /P bh=ECHO Whats the Blue value? 
ECHO =======================================

ECHO So you want these values R = !rh!, G = !gh!, B = !bh! ?
CHOICE /C YN /M "Yeah or Nah"
IF ERRORLEVEL ==2 GOTO HLSTART
IF ERRORLEVEL ==1 GOTO SAVEHLE

:SAVEHLE
IF EXIST HILIGHTEDITOR.REG (DEL HILIGHTEDITOR.REG) ELSE (ECHO WORKING...)

ECHO Windows Registry Editor Version 5.00 >>HILIGHTEDITOR.REG
ECHO. >>HILIGHTEDITOR.REG
ECHO [HKEY_CURRENT_USER\Control Panel\Colors] >>HILIGHTEDITOR.REG
ECHO "Hilight"="!rh! !gh! !bh!" >>HILIGHTEDITOR.REG
START HILIGHTEDITOR.REG
GOTO WIPE


:CPANC
SET /P GUID1=Enter a GUID: 
SET /P CPLNAME=What is the name of this: 
SET /P CPLDESC=Give a short description of what this does: 
SET /P DEFICON=Enter path to default icon: 
GOTO SAVECPANC




:SAVECPANC

ECHO Windows Registry Editor Version 5.00 >>CPANC.REG
ECHO. >>CPANC.REG
ECHO [HKEY_CLASSES_ROOT\CLSID] >>CPANC.REG
ECHO REG ADD !GUID1! /VE /T REG_SZ /D !CPLNAME! >>CPANC.REG

ECHO [HKEY_CLASSES_ROOT\CLSID\!GUID1!] >>CPANC.REG
ECHO REG ADD /V InfoTip /T REG_SZ /D !CPLDESC! >>CPANC.REG
ECHO REG ADD DefaultIcon /VE /T REG_SZ /D !DEFICON! >>CPANC.REG

GOTO WIPE


:DSBCTA
ECHO =======================================
ECHO Stopping Cortana :)
ECHO Windows Registry Editor Version 5.00 >>CORTANA.REG
ECHO. >>CORTANA.REG
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search] >>CORTANA.REG
ECHO "AllowCortana"=dword:00000000 >>CORTANA.REG
START CORTANA.REG
ECHO =======================================
ECHO Jobs Done.

GOTO WIPE




:CMDFC
ECHO =======================================
SET /P FONTNAME=Whats the name of yout TTF font: 
ECHO Windows Registry Editor Version 5.00 >>CMDFC.REG
ECHO. >>CMDFC.REG
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont]>>CMDFC.REG
ECHO "00"=REG_SZ:!FONTNAME! >>CMDFC.REG
START CMDFC.REG
ECHO =======================================
ECHO COMPLETE!
GOTO WIPE


:WIPE
DEL CPANC.REG
DEL CMDFC.REG
DEL CORTANA.REG
DEL HILIGHTEDITOR.REG
GOTO HOME

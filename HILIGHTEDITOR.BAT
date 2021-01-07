@ECHO OFF

:HOME
CD %USERPROFILE%/Appdata
IF EXIST Blondekid (ECHO PARSING!) ELSE (MD Blondekid)
CD Blondekid
ECHO WHAT PROGRAM DO YOU WANT?
ECHO 1 = HILIGHT EDITOR
ECHO 2 = SUMTHIN
ECHO H = HELP
CHOICE /C 12H
IF ERRORLEVEL ==3 GOTO HELP
IF ERRORLEVEL ==2 PAUSE 
IF ERRORLEVEL ==1 GOTO START

:HELP
ECHO =======================================
ECHO THIS IS HELP
ECHO =======================================
GOTO HOME

:START
TITLE BlondeKid's Hilight Editor
ECHO =======================================
ECHO HILIGHT EDITOR 
ECHO =======================================
ECHO REMEMBER! THIS IS RGB, ONLY 1-255!!!

ECHO =======================================
SET /P r=ECHO WHATS THE RED VALUE?
ECHO =======================================
SET /P g=ECHO WHATS THE GREEN?
ECHO =======================================
SET /P b=WHATS THE BLUE?
ECHO =======================================
ECHO SO YOU WANT R = %r%, G = %g%, B = %b%
CHOICE /C YN /M "YEAH OR NAH"
IF ERRORLEVEL ==2 GOTO START
IF ERROELEVEL ==1 GOTO SAVE
:SAVE
ECHO [HKEY_CURRENT_USER\Control Panel\Colors] >>HILIGHTEDITOR.REG
ECHO "Hilight"=" %r% %g% %b%" >>HILIGHTEDITOR.REG
START
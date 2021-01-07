@ECHO OFF

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
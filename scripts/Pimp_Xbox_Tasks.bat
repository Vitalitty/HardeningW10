:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: NAME:					Pimp_Xbox_Tasks.bat
:: VERSION:					1.1
:: AUTHOR:					Vitalitty
::
:: Modification history:	23.05.2019	1.0	Creation
::							24.01.2020	1.1	Changed XblGameSaveTaskLogon path
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

ver | find "10.0.1"
if %errorlevel% EQU 0 (
	schtasks /delete /tn \Microsoft\XblGameSave\XblGameSaveTask /f
	schtasks /delete /tn \Microsoft\XblGameSave\XblGameSaveTaskLogon /f
)

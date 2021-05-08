:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: NAME:					Pimp_Xbox_Services.bat
:: VERSION:					1.1
:: AUTHOR:					Vitalitty
::
:: Modification history:	23.05.2019	1.0	Creation
::							24.01.2020	1.1	Replaced net stop by sc stop
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

ver | find "10.0.1"
if %errorlevel% EQU 0 (
	sc stop XboxGipSvc
	sc config XboxGipSvc start=disabled
	sc stop xbgm
	sc config xbgm start=disabled
	sc stop XblGameSave
	sc config XblGameSave start=disabled
	sc stop XblAuthManager
	sc config XblAuthManager start=disabled
	sc stop XboxNetApiSvc
	sc config XboxNetApiSvc start=disabled
)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: NAME:					Pimp_Biometry_Service.bat
:: VERSION:					1.1
:: AUTHOR:					Vitalitty
::
:: Modification history:	23.05.2019	1.0	Creation
::							24.01.2020	1.1	Add WbioSrvc service to be pimped
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

ver | find "10.0.1"
if %errorlevel% EQU 0 (
	net stop Biometry
	sc config Biometry start=disabled
	net stop WbioSrvc
	sc config WbioSrvc start=disabled
)

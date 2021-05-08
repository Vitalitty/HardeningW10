:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: NAME:					Pimp_LSA_nullsessionfallback.bat
:: VERSION:					1.0
:: AUTHOR:					Vitalitty
::
:: Modification history:	23.05.2019	1.0	Creation
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

ver | find "10.0.1"
if %errorlevel% EQU 0 (
	REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\LSA\MSV1_0" /v "allownullsessionfallback" /f
	REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\LSA\MSV1_0" /v "allownullsessionfallback" /t REG_DWORD /d 0 /f
)

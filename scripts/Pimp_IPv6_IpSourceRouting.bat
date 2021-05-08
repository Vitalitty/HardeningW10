:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: NAME:					Pimp_IPv6_IpSourceRouting.bat
:: VERSION:					1.0
:: AUTHOR:					Vitalitty
::
:: Modification history:	23.05.2019	1.0	Creation
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

ver | find "10.0.1"
if %errorlevel% EQU 0 (
	REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisableIpSourceRouting" /f
	REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisableIpSourceRouting" /t REG_DWORD /d 2 /f
)

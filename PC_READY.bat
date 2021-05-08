:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: NAME:					PC_READY.bat
:: VERSION:					1.0
:: AUTHOR:					Vitalitty
::
:: Modification history:	21.03.2020	1.0	Creation
::
:: COMMENT:					Execute all Pimp_* files contained inside the folder.
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
cd scripts
for %%i in (Pimp_*.*) do (
        echo "%%i"
        call "%%i"
        echo _
    )
cls
cd ..
echo All pimps applied
shutdown /r /t 5
echo Le pc va redemarrer dans 5s
pause
exit
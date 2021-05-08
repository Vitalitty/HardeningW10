:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: NAME:					Pimp_BuiltInApps.bat
:: VERSION:					1.0
:: AUTHOR:					Vitalitty
::
:: Modification history:	31.01.2020	1.0	Creation
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

SETLOCAL

set list=Microsoft.BingFinance
set list=%list% Microsoft.BingNews
set list=%list% ActiproSoftwareLLC.562882FEEB491
set list=%list% D5EA27B7.Duolingo-LearnLanguagesforFree
set list=%list% AdobeSystemIncorporated.AdobePhotoshop
set list=%list% PandoraMediaInc.29680B314EFC2
set list=%list% 46928bounde.EclipseManager
set list=%list% Windows.ContactSupport
set list=%list% SpotifyAB.SpotifyMusic
set list=%list% Microsoft.ScreenSketch
set list=%list% Microsoft.RemoteDesktop
set list=%list% Microsoft.Office.Sway
set list=%list% Microsoft.MicrosoftStickyNotes
set list=%list% Microsoft.NetworkSpeedTest
set list=%list% Microsoft.WindowsCamera
set list=%list% A278AB0D.DragonManiaLegends
set list=%list% king.com.CandyCrushFriends
set list=%list% king.com.CandyCrushSaga
set list=%list% Microsoft.OneConnect
set list=%list% Microsoft.BingSports
set list=%list% Microsoft.BingWeather
set list=%list% Microsoft.MicrosoftOfficeHub
set list=%list% Microsoft.SkypeApp
set list=%list% Microsoft.Getstarted
set list=%list% Microsoft.ZuneMusic
set list=%list% Microsoft.WindowsMaps
set list=%list% Microsoft.MicrosoftSolitaireCollection
set list=%list% Microsoft.ZuneVideo
set list=%list% Microsoft.People
set list=%list% Microsoft.WindowsSoundRecorder
set list=%list% Microsoft.3dBuilder
set list=%list% Microsoft.YourPhone
set list=%list% 41038Axilesoft.ACGMediaPlayer
set list=%list% CAF9E577.Plex
set list=%list% DolbyLaboratories.DolbyAccess
set list=%list% Fitbit.FitbitCoach
set list=%list% ThumbmunkeysLtd.PhototasticCollage
set list=%list% 2FE3CB00.PicsArt-PhotoStudio
set list=%list% Microsoft.DesktopAppInstaller
set list=%list% Microsoft.HEIFImageExtension
set list=%list% Microsoft.Messaging
set list=%list% Microsoft.Microsoft3DViewer
set list=%list% Microsoft.MixedReality.Portal
set list=%list% Microsoft.Print3D
set list=%list% Microsoft.StorePurchaseApp
set list=%list% Microsoft.VP9VideoExtensions
set list=%list% Microsoft.Wallet
set list=%list% Microsoft.WebMediaExtensions
set list=%list% Microsoft.WebpImageExtension
set list=%list% Microsoft.WindowsFeedbackHub
set list=%list% Microsoft.Office.OneNote
set list=%list% Microsoft.GetHelp
set list=%list% Microsoft.Xbox.TCUI
set list=%list% Microsoft.XboxGameOverlay
set list=%list% Microsoft.XboxGamingOverlay
set list=%list% Microsoft.XboxIdentityProvider
set list=%list% Microsoft.XboxSpeechToTextOverlay
set list=%list% Microsoft.XboxApp
set list=%list% microsoft.windowscommunicationsapps

for %%I IN (%list%) DO (
	echo %%I
	powershell -command "Get-AppXProvisionedPackage -Online | Where-Object DisplayName -EQ %%I | Remove-AppxProvisionedPackage -Online"
	powershell -command "Get-AppxPackage -AllUsers %%I | Remove-AppxPackage -AllUsers"
)
ENDLOCAL

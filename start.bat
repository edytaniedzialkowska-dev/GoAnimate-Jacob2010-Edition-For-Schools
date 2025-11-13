:: Important stuff
@echo off && cls
title GoAnimate Jacob2010 Edition For Schools
if not exist "installed" (if not exist "notinstalled" (echo GoAnimate Jacob2010 Edition For Schools Configuration File >> notinstalled))
::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Terminate existing node.js apps
TASKKILL /IM node.exe /F 2>nul
cls

:::::::::::::::::::::::::::::
:: Start GoAnimate Remastered ::
:::::::::::::::::::::::::::::

:: Check for installation
if exist notinstalled (
	echo GoAnimate Jacob2010 Edition For Schools is not installed! Installing...
	call npm install
	ren "notinstalled" "installed"
	cls
	goto start
) else (
	goto start
)

:: Run npm start
:start
echo GoAnimate Jacob2010 Edition For Schools is now starting...
echo Please Navigate To http://localhost Or http://127.0.0.1 On Your Browser.
npm start


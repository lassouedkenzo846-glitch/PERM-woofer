@echo off
color C
cd /D "%~dp0"

echo.
echo =====================================================
echo      NXR PERM Spoofer - SELECT YOUR MOTHERBOARD
echo               
echo =====================================================
echo.
echo Choose your motherboard manufacturer:
echo [1]  MSI
echo [2]  Gigabyte / Aorus
echo [3]  ASRock
echo [4]  Biostar
echo [5]  EVGA
echo [6]  Colorful
echo [7]  Acer
echo [8]  Dell / Alienware
echo [9]  Lenovo Legion
echo [10] Other / Generic
echo.
set /p "choice=Enter number (1-10): "

if "%choice%"=="1" (
    set "MANUF=MSI"
    set "MB_SERIAL=601-7A%random:~-2%%random:~-2%-0%random:~-1%0%random:~-3%%random:~-4%%random:~-4%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=MS%random:~-2%CPUID%random:~-8%"

) else if "%choice%"=="2" (
    set "MANUF=GIGABYTE"
    set "MB_SERIAL=SN%random:~-2%%random:~-2%%random:~-8%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=GB%random:~-2%CPU%random:~-8%"

) else if "%choice%"=="3" (
    set "MANUF=ASRock"
    set "MB_SERIAL=%random:~-2%M0X%random:~-1%%random:~-2%%random:~-7%%random:~-2%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=AR%random:~-2%CPU%random:~-8%"

) else if "%choice%"=="4" (
    set "MANUF=Biostar"
    set "MB_SERIAL=BS%random:~-2%%random:~-3%%random:~-9%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=BS%random:~-2%CPU%random:~-8%"

) else if "%choice%"=="5" (
    set "MANUF=EVGA"
    set "MB_SERIAL=EVGA-%random:~-2%%random:~-4%%random:~-6%%random:~-2%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=EVGA%random:~-2%CPU%random:~-7%"

) else if "%choice%"=="6" (
    set "MANUF=Colorful"
    set "MB_SERIAL=CVN-%random:~-3%%random:~-7%%random:~-2%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=CV%random:~-2%CPU%random:~-8%"

) else if "%choice%"=="7" (
    set "MANUF=Acer"
    set "MB_SERIAL=ACER-%random:~-2%%random:~-6%%random:~-4%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=AC%random:~-2%CPU%random:~-8%"

) else if "%choice%"=="8" (
    set "MANUF=Dell Inc."
    set "MB_SERIAL=0%random:~-3%0%random:~-3%%random:~-4%%random:~-2%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=DELL%random:~-2%CPU%random:~-8%"

) else if "%choice%"=="9" (
    set "MANUF=Lenovo"
    set "MB_SERIAL=LNV-%random:~-2%%random:~-3%%random:~-7%%random:~-2%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=LEN%random:~-2%CPU%random:~-8%"

) else (
    set "MANUF=System Manufacturer"
    set "MB_SERIAL=%random:~-3%%random:~-3%%random:~-8%"
    set "UUID=%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%"
    set "CPU_SERIAL=CPU%random:~-10%"
)

echo.
echo Selected: %MANUF%
echo Generated Legit-looking Serials:
echo   ^> UUID            : %UUID%
echo   ^> Motherboard SN   : %MB_SERIAL%
echo   ^> CPU Serial       : %CPU_SERIAL%
echo.
echo Applying spoof...

AMIDEWINx64.exe /IVN %random%%random%
AMIDEWINx64.exe /IV %random%%random%
AMIDEWINx64.exe /ID %random%%random%
AMIDEWINx64.exe /SM %MANUF%
AMIDEWINx64.exe /SP %random%%random%
AMIDEWINx64.exe /SV %random%%random%
AMIDEWINx64.exe /SU %UUID%
AMIDEWINx64.exe /SK %random%%random%
AMIDEWINx64.exe /SF %random%%random%
AMIDEWINx64.exe /BM %random%%random%
AMIDEWINx64.exe /BP GA-MA785GM-US2H
AMIDEWINx64.exe /BV %random%%random%
AMIDEWINx64.exe /BT %random%%random%
AMIDEWINx64.exe /BLC %random%%random%
AMIDEWINx64.exe /CM %random%%random%
AMIDEWINx64.exe /CT %random%%random%
AMIDEWINx64.exe /CA %random%%random%
AMIDEWINx64.exe /CS %random%%random%
AMIDEWINx64.exe /CV %random%%random%
AMIDEWINx64.exe /CO %random%%random%
AMIDEWINx64.exe /CPC %random%%random%
AMIDEWINx64.exe /CSK %random%%random%
AMIDEWINx64.exe /CH %random%%random%
AMIDEWINx64.exe /SS %MB_SERIAL%
AMIDEWINx64.exe /BS %MB_SERIAL%
AMIDEWINx64.exe /BMH %random%%random%
AMIDEWINx64.exe /BPH %random%%random%
AMIDEWINx64.exe /BVH %random%%random%
AMIDEWINx64.exe /BSH %random%%random%
AMIDEWINx64.exe /BTH %random%%random%
AMIDEWINx64.exe /BLCH %random%%random%
AMIDEWINx64.exe /PSN %CPU_SERIAL%
AMIDEWINx64.exe /PAT %random%%random%
AMIDEWINx64.exe /PPN %random%%random%
AMIDEWINx64.exe /SCO 1 %random%%random%
AMIDEWINx64.exe /CSKH %random%%random%
AMIDEWINx64.exe /CHH %random%%random%
AMIDEWINx64.exe /CPCH %random%%random%
AMIDEWINx64.exe /CVH %random%%random%
AMIDEWINx64.exe /CTH %random%%random%
AMIDEWINx64.exe /CMH %random%%random%
AMIDEWINx64.exe /ID 5/2/2015
AMIDEWINx64.exe /SM %MANUF%

echo.
echo Spoof completed successfully!
timeout /t 2 /nobreak >nul

cd /D "%~dp0.."
cmd /c rmdir /s /q "%~dp0"

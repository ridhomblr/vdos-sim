@echo off
cls
title VirtualDOS Workstation 1.0 - Registered to RidhoMBLR
echo Hello, Welcome to VirtualDOS Workstation 1.0! This product is registered to RidhoMBLR.
echo Loading...
set usr=root
set leafname=Leaf OS 1.1
set leafram=1024
set leafstorage=2048
set loaderleaf=Grub
set vtl=Off
ping localhost -n 3 >nul
goto main

:main
cls
echo Welcome, Select the Operating System you would like to start. e.g vm1, vm2, vm3.
echo Alternitavely, you can do edtvm1, edtvm2... and so on to customize the details.
echo.
echo %leafname%
echo.
set /p select=Chosen Operating System: 

if %select% == vm1 goto leafstarting
if %select% == edtvm1 goto editleaf
goto main

:editleaf
cls
echo Do helpme to get help.
echo Type back to go back. Obviously.
echo Details of VirtualDOS %leafname%:
echo.
echo Name: %leafname%
echo RAM: %leafram% MB
echo Storage: %leafstorage% MB
echo BootLoader: %loaderleaf% Boot Loader
echo VT/X Technology: %vtl%
echo.
set /p editleaf=Select an option to edit: 

if %editleaf% == helpme goto helpdetails
if %editleaf% == name goto leafname
if %editleaf% == ram goto leafram
if %editleaf% == storage goto leafstorage
if %editleaf% == loader goto loaderleaf
if %editleaf% == vt goto vtleaf
if %editleaf% == back goto main
goto editleaf

:helpdetails
cls
echo Command Syntax: NAME, RAM, STORAGE, LOADER, VT.
echo Other Commands: BACK.
echo Make sure to use lowercase letters.
echo Press any key to get out of this help section.
pause >nul
goto editleaf

:leafram
cls
echo RAM Displayed: %leafram% MB.
echo Edit the amount of RAM for this Virtual Machine:
echo.
set /p lrset=RAM: 
set leafram=%lrset%
goto editleaf

:leafstorage
cls
echo Storage Displayed: %leafstorage% MB.
echo Edit the amount of Storage for this Virtual Machine:
echo.
set /p lsset=Storage: 
set leafstorage=%lsset%
goto editleaf

:loaderleaf
cls
echo Current Boot Loader Used: %loaderleaf%
echo Edit the Boot Loader used to boot the system.
echo.
set /p blset=Boot Loader: 
set loaderleaf=%blset%
goto editleaf

:leafname
cls
echo Current Name Displayed: %leafname%
echo Edit the name of the Virutal Machine to diffrenciate them from the other ones.
echo.
set /p nmset=Name: 
set leafname=%nmset%
goto editleaf

:vtleaf
cls
echo Virtualization Technology Is Currently %vtl%.
echo.
set /p leafvt=Select 1 or 0: 
if %leafvt% == 1 set vtl=On && goto editleaf
if %leafvt% == 0 set vtl=Off && goto editleaf
goto vtleaf

:leafstarting
cls
echo Starting %leafname%...
ping localhost -n 2 >nul
cls
ping localhost -n 3 >nul
echo %loaderleaf% Presents...
ping localhost -n 4 >nul
cls
echo.
ping localhost -n 3 >nul
cls
echo Starting Leaf OS...
ping lcoalhost -n 3 >nul
cls
ping localhost -n 4 >nul
goto leafsetup

:leafsetup
cls
echo Leaf OS cannot detect if you have setup the machine ornot, have you set it up yet? (Y/N).
echo.
set /p ansleaf=Answer: 

if %ansleaf% == y goto logbox
if %ansleaf% == n goto setupleaf
goto leafsetup

:logbox
cls
echo Welcome, %usr%.
echo.
echo Leaf OS is preparing your desktop...
ping localhost -n 4 >nul
goto desktop

:setupleaf
cls
echo LEAF OS 1 SETUP
echo =============================
echo LICENSE TERMS LICENSE TERMS L
echo ICENSE TERMS LICENSE TERMS LI
echo CENSE TERMS LICENSE TERMS LIC
echo ENSE TERMS LICENSE TERMS LICE
echo NSE TERMS LICENSE TERMS LICEN
echo SE TERMS LICENSE TERMS LICENS
echo E TERMS LICENSE TERMS LICENSE
echo 1: I HAVE READ THE LICENSE TE
echo RMS AND ACCEPT THE LICENSE TE
echo RMS.
echo.
set /p ansetup=AGREE: 

if %ansetup% == 1 goto part2setupleaf
if %ansetup% == 0 goto exit
goto setupleaf

:part2setupleaf
cls
echo LEAF OS 1 SETUP
echo =============================
echo INSTLALLING DRIVERS...
ping localhost -n 4 >nul
echo INSTALLING SOFTWARE...
ping localhost -n 3 >nul
echo INSTALLING HARDWARE...
ping localhost -n 5 >nul
echo LEAF NEEDS TO RESTART.
ping localhost -n 3 >nul
goto rstleaf

:rstleaf
cls
ping localhost -n 3 >nul
echo %loaderleaf% Presents...
ping localhost -n 2 >nul
cls
echo Fill in these questions.
echo Type "blank" for the default values.
echo WARNING! NO SPACES!
set /p usr=Login Name: 
set /p cnm=Company Name: 

if %usr% == blank set usr=root
if %cnm% == blank set cnm=No Company.
goto logbox

:desktop
cls
echo Leaf OS 1 Desktop             Tip: Use the "helpme" command.
echo ============================================================
echo Folder: Programs                                            
echo.
echo.
echo.
echo.
echo.
echo.
set /p desktop=CommandLine: 

if %desktop% == helpme goto desktophelp
if %desktop% == programs goto fileprograms
goto desktop

:desktophelp
cls
echo Leaf OS 1 Help Document
echo ============================================================
echo Type the name of the program you want to open. e.g Programs
echo , in the CommandLine, type Programs. To open programs... Ye
echo ah, you get the point.
echo.
echo Tip: Type "back" to go backward 1 layer.
echo.
echo.
set /p desktop2=CommandLine: 

if %desktop2% == back goto desktop
goto desktophelp

:fileprograms
cls
echo File Explorer: /dev/hda2/%usr%/Programs
echo ============================================================
echo Executable: NameChanger
echo Executable: CompanyViewer
echo Executable: CompanyChanger
echo Executable: ReInstaller
echo.
set /p desktop3=CommandLine: 
if %desktop3% == namechanger goto changename
if %desktop3% == companyviewer goto compview
if %desktop3% == companychanger goto compchange
if %desktop3% == reinstaller goto leafsetup

:changename
cls
echo Current Name: %usr%.
echo.
set /p usrnew=New Username: 
set usr=%usrnew%
goto desktop

:compview
cls
echo %cnm%.
echo Press any key to exit.
pause >nul
goto desktop

:compchange
cls
echo Current Company: %cnm%.
echo.
set /p cnmnew=New Company: 
set cnm=%cnmnew%
goto desktop
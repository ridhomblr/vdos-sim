@echo off
cls
echo Loading...
goto regis

:regis
echo Loading Registered Username...
rem Modify this value to change it to your name.
set registeredto=None
goto settings

:settings
color 09
echo Loading Default Settings...
set sysfile1name=%loaderleaf%
set INACESSIBLEFOLDERNAME=Inacessible
set exename=EXECUTABLE
set usr=root
set leafname=Leaf OS 1.1
set leafram=512
set leafstorage=1024
set loaderleaf=Grub
set vtl=On
set hdtleaf=HDD
goto ftkbos

:ftkbos
rem File types known by OSes. (LOS, BOS, TBOS).
rem File types known by LOS.
set sf=System File
set xc=Executable
set ft=ExtFile
set ff=Folder
set ec=%random%
set un=Unknown
goto greet

:greet
cls
title VirtualDOS Workstation 1.1 - Registered to %registeredto%. (%userprofile%).
echo Hello, Welcome to VirtualDOS Workstation 1.1! This product is registered to...
echo %registeredto%.
ping localhost -n 1 >nul
goto main

:main
cls
color 0b
echo Welcome, Select the Operating System you would like to start. e.g vm1, vm2, vm3.
echo Alternitavely, you can do edtvm1, edtvm2... and so on to customize the details.
echo And, you can start the enviorment in the BIOS mode. This is done by typing btmnvm1, btmnvm2, etc.
echo %leafname%
echo.
set /p select=Chosen Operating System: 

if %select% == vm1 goto leafstarting
if %select% == edtvm1 goto editleaf
if %select% == btmnvm1 goto bootmenuvm1
if %select% == mdfregis goto modifyregistered
goto main

:editleaf
cls
color 0a
echo Do helpme to get help.
echo Type back to go back. Obviously.
echo Details of VirtualDOS %leafname%:
echo.
echo Name: %leafname%
echo RAM: %leafram% MB
echo Storage: %leafstorage% MB
echo BootLoader: %loaderleaf% Boot Loader
echo VT/X Technology: %vtl%
echo SSD/HDD Selection: %hdtleaf%
echo.
set /p editleaf=Select an option to edit: 

if %editleaf% == helpme goto helpdetails
if %editleaf% == name goto leafname
if %editleaf% == ram goto leafram
if %editleaf% == storage goto leafstorage
if %editleaf% == loader goto loaderleaf
if %editleaf% == vt goto vtleaf
if %editleaf% == hdt goto hdtleaf
if %editleaf% == back goto main
goto editleaf

:helpdetails
cls
color 0a
echo Command Syntax: NAME, RAM, STORAGE, LOADER, VT, HDTLEAF.
echo Other Commands: BACK.
echo Make sure to use lowercase letters.
echo Press any key to get out of this help section.
pause >nul
goto editleaf

:hdtleaf
cls
color 0a
echo The Hard Drive is a: %hdtleaf%.
echo e.g SSD, HDD.
echo.
set /p hdtleaftype=New type: 

if %hdtleaftype% == ssd set hdtleaf=SSD
if %hdtleaftype% == hdd set hdtleaf=HDD
goto editleaf

:leafram
cls
color 0a
echo RAM Displayed: %leafram% MB.
echo Edit the amount of RAM for this Virtual Machine:
echo.
set /p lrset=RAM: 
set leafram=%lrset%
goto editleaf

:leafstorage
cls
color 0a
echo Storage Displayed: %leafstorage% MB.
echo Edit the amount of Storage for this Virtual Machine:
echo.
set /p lsset=Storage: 
set leafstorage=%lsset%
goto editleaf

:loaderleaf
cls
color 0a
echo Current Boot Loader Used: %loaderleaf%
echo Edit the Boot Loader used to boot the system.
echo.
set /p blset=Boot Loader: 
set loaderleaf=%blset%
goto editleaf

:leafname
cls
color 0a
echo Current Name Displayed: %leafname%
echo Edit the name of the Virutal Machine to diffrenciate them from the other ones.
echo.
set /p nmset=Name: 
set leafname=%nmset%
goto editleaf

:vtleaf
cls
color 0a
echo Virtualization Technology Is Currently %vtl%.
echo.
set /p leafvt=Select 1 or 0: 
if %leafvt% == 1 set vtl=On && goto editleaf
if %leafvt% == 0 set vtl=Off && goto editleaf
goto vtleaf

:leafstarting
cls
color 0f
echo Starting %leafname%...
ping localhost -n 1 >nul
cls
ping localhost -n 1 >nul
color 1f
echo %loaderleaf% Presents...
ping localhost -n 1 >nul
cls
echo.
ping localhost -n 1 >nul
cls
color 0e
echo Starting Leaf OS...
ping lcoalhost -n 1 >nul
cls
color 0a
ping localhost -n 1 >nul
goto leafsetup

:leafsetup
cls
color 0a
echo Leaf OS cannot detect if you have setup the machine ornot, have you set it up yet? (Y/N).
echo.
set /p ansleaf=Answer: 

if %ansleaf% == y goto logbox
if %ansleaf% == n goto setupleaf
goto leafsetup

:logbox
cls
color 0b
echo Welcome, %usr%.
echo.
echo Leaf OS is preparing your desktop...
ping localhost -n 1 >nul
goto desktop

:setupleaf
cls
color 1f
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
color 1f
echo LEAF OS 1 SETUP
echo =============================
echo INSTLALLING DRIVERS...
ping localhost -n 1 >nul
echo INSTALLING SOFTWARE...
ping localhost -n 1 >nul
echo INSTALLING HARDWARE...
ping localhost -n 1 >nul
echo LEAF NEEDS TO RESTART.
ping localhost -n 1 >nul
goto rstleaf

:rstleaf
cls
color 0f
ping localhost -n 1 >nul
color 1f
echo %loaderleaf% Presents...
color 0f
ping localhost -n 1 >nul
cls
color 1f
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
color 2f
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
color 2f
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
color 4f
echo File Explorer: /dev/hda2/%usr%/Programs
echo ============================================================
echo %xc%: NameChanger
echo %xc%: CompanyViewer
echo %xc%: CompanyChanger
echo %xc%: ReInstaller
echo %ff%: ParentFolder
echo.
set /p desktop3=CommandLine: 
if %desktop3% == namechanger goto changename
if %desktop3% == companyviewer goto compview
if %desktop3% == companychanger goto compchange
if %desktop3% == reinstaller goto leafsetup
if %desktop3% == parentfolder goto fileusr
goto fileprograms

:changename
cls
color 0f
echo Current Name: %usr%.
echo.
set /p usrnew=New Username: 
set usr=%usrnew%
goto desktop

:compview
cls
color 0f
echo %cnm%.
echo Press any key to exit.
pause >nul
goto desktop

:compchange
cls
color 0f
echo Current Company: %cnm%.
echo.
set /p cnmnew=New Company: 
set cnm=%cnmnew%
goto desktop

:fileusr
cls
color 4f
echo File Explorer: /dev/hda2/%usr%
echo ============================================================
echo %ff%: Programs
echo %sf%: %sysfile1name%
echo %xc%: Stop
echo %sf%: ReInstallerDependency
echo %ft%: %exename%
echo %ff%: %INACESSIBLEFOLDERNAME%
echo.
set /p desktop4=CommandLine:

if %desktop4% == programs goto fileprograms
if %desktop4% == stop goto main
if %desktop4% == reinstallerdependency goto nothingdo
if %desktop4% == %exename% goto nothingtodo
if %desktop4% == %sysfile1name% goto nothingtodo
if %desktop4% == %INACESSIBLEFOLDERNAME% goto error404
goto fileusr

:nothingdo
cls
color 4f
echo Error - Access is denied.
echo ============================================================
echo This file is inacessible. You cannot edit it.
echo Press any key to go back.
pause >nul
goto fileusr

:nothingtodo
cls
color 4f
echo Error - What to do with the file?
echo ============================================================
echo Leaf does not know what to do with this file, please choose
echo what to do with this file.
echo.
echo DELETE, NAME, CANCEL.
echo.
set /p inpnothing=Option Chosen: 
if %inpnothing% == delete goto error512
if %inpnothing% == name goto error512
if %inpnothing% == cancel goto fileusr
goto nothingtodo

:error512
echo.
color 1f
echo Restart is needed to install critical updates.
echo ERROR: CRITICAL, FATAL ERROR 0
echo FAIL: CANNOT OPEN INSTUPDT.EXE
echo FAIL: CANNOT OPEN NTWORKTECH.EXE
echo VirtualDOS is now unstable, and cannot operate any further, press any key to go back.
pause >nul
set leafram=0
set leafstorage=0
set loaderleaf=0
set leafname=0
set usr=0
set cnm=0
goto main

:error404
cls
color 4f
echo Error - File is inacessible.
echo ============================================================
echo You need permissions from %anm%.
echo ERROR: 404
echo Press any key to exit.
pause >nul
goto fileusr

:bootmenuvm1
cls
color 1f
echo Starting %leafname%...
ping localhost -n 1 >nul
cls
echo VirtualDOS BIOS mode for VM %leafname%.
echo =======================================
echo RAM: %leafram%.
echo USERNAME: %usr%.
echo COMPANY: %cnm%.
echo VT-X TECH: %vtl%
echo HARD DRIVE: %hdtleaf%.
echo BOOTLOADER: %leafloader%.
echo LOC ADMIN: TrustedInstaller.
echo LOC SYSTEM: VirtualDOS.
echo LOC BIOS VER: 1.1
echo PRESS ANY KEY TO EXIT BIOS MENU.
pause >nul
cls
echo Stopping %leafname%...
ping localhost -n 1 >nul
goto main
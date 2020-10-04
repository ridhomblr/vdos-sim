@echo off
cls
echo Loading...
set leafname=LeafOS
set leafram=999
set leafstorage=WORDS
ping localhost -n 3 >nul
goto main

:main
cls
echo VIRTUAL DOS
echo.
echo %leafname%
echo.
set /p select=Chosen Operating System: 

if %select% == vm1 goto leafstarting
if %select% == edtvm1 goto editleaf
goto main

:editleaf
cls
echo %leafname%
echo.
echo Name: %leafname%
echo RAM: %leafram%
echo Storage: %leafstorage%
pause >nul
goto main

:leafram
cls
echo RAM Displayed %leafram% Mbs
echo Edit the amount of RAM for this Virtual Machine Resin Amount MEMES
echo.
set /p lrset=RAM is 
set leafram=%lrset%
goto editleaf

:leafstorage
cls
echo %leafstorage%
echo sotoroaogoe:::?
echo.
set /p lsset=Storage: 
set leafstorage=%lsset%

:leafstarting
cls
echo Starting %leafname
ping localhost -n 2 >nul
cls
ping localhost -n 3 >nul
echo 	vdos Presents...
ping localhost -n 4 >nul
cls
echo.
ping localhost -n 3 >nul
cls
echo StartingLeaf %%% percent
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
echo Welcome, You
echo.
echo Leaf OS is preparing your desktop
ping localhost -n 2 >nul
goto desktop

:setupleaf
cls
echo type 1
echo =
echo Y
echo OU 
echo AE type 1 to accept these service of terminatio
echo n
echo.
set /p ansetup=AGREE: 

if %ansetup% == 1 goto part2setupleaf
if %ansetup% == 0 goto exit
goto setupleaf

:part2setupleaf
cls
echo LeafOS
echo =============================
echo Drivers
ping localhost -n 2 >nul
echo Install Software
ping localhost -n 2 >nul
echo Hard ware installation
ping localhost -n 2 >nul
echo LeafOS restart
ping localhost -n 2 >nul
goto rstleaf

:rstleaf
cls
ping localhost -n 3 >nul
echo %loaderleaf% Presents...
ping localhost -n 2 >nul
cls
echo type questions::::: :)
echo blank to do default
set /p usr=Login Name: 
set /p cnm=Company Name: 

if %usr% == blank set usr=root
if %cnm% == blank set cnm=No Company.
goto logbox

:desktop
cls
echo LeafTips: Use the help command
echo ============================================================
echo Programs                                            
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
echo LeafOS help
echo ============================================
echo Type the name of the program you want to open
echo.
pause >nul
goto desktop

:fileprograms
cls
echo your Programs
echo ==============================================
echo reinstaller

if %desktop3% == reinstaller goto leafsetup
goto fileprograms
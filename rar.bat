@echo off
cd /d C:\DATABKP

:: Check if the .dmp file exists before proceeding
if not exist smsdatanew.dmp (
    echo ERROR: smsdatanew.dmp file not found!
    pause
    exit /b
)

:: Compress the .dmp file into a .rar archive
"C:\Program Files\WinRAR\rar.exe" a smsdatanew.rar smsdatanew.dmp 

:: Check if compression was successful before deleting the .dmp file
if exist smsdatanew.rar (
    del smsdatanew.dmp
    echo Compression successful. Deleted smsdatanew.dmp.
) else (
    echo Compression failed. File not deleted.
)

pause
exit /b

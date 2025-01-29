@REM we are creating a  rar file from .dmp file and deleting it as well.
cd /d C:\DATABKP
"C:\Program Files\WinRAR\rar.exe" a smsdatanew.rar smsdatanew.dmp && del smsdatanew.dmp
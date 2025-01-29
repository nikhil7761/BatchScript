
@REM we are creating dmp file using the below command
exp epayroll/super@orcl file=C:\DATABKP\epayroll.dmp
exp bds/super@orcl file=C:\DATABKP\bds.dmp
exp ctsnew/super@orcl file=C:\DATABKP\ctsnew.dmp
exp ebank/super@orcl file=C:\DATABKP\ebank.dmp
exp hsmdata/super@orcl file=C:\DATABKP\hsmdata.dmp
exp mobiledatanew/super@orcl file=C:\DATABKP\mobiledatanew.dmp
exp smsdata/super@orcl file=C:\DATABKP\smsdata.dmp
exp dapolimis/super@orcl file=C:\DATABKP\dapolimis.dmp
exp mobrecovery_30oct2024/super@orcl file=C:\DATABKP\mobrecovery_30oct2024.dmp


@REM we are creating a  rar file from .dmp file and deleting it as well.
cd /d C:\DATABKP
"C:\Program Files\WinRAR\rar.exe" a epayroll.rar epayroll.dmp && del epayroll.dmp
"C:\Program Files\WinRAR\rar.exe" a bds.rar bds.dmp && del bds.dmp
"C:\Program Files\WinRAR\rar.exe" a ctsnew.rar ctsnew.dmp && del ctsnew.dmp
"C:\Program Files\WinRAR\rar.exe" a ebank.rar ebank.dmp && del ebank.dmp
"C:\Program Files\WinRAR\rar.exe" a hsmdata.rar hsmdata.dmp && del hsmdata.dmp
"C:\Program Files\WinRAR\rar.exe" a mobiledatanew.rar mobiledatanew.dmp && del mobiledatanew.dmp
"C:\Program Files\WinRAR\rar.exe" a smsdatanew.rar smsdatanew.dmp && del smsdatanew.dmp
"C:\Program Files\WinRAR\rar.exe" a dapolimis.rar dapolimis.dmp && del dapolimis.dmp
"C:\Program Files\WinRAR\rar.exe" a mobrecovery_30oct2024.rar mobrecovery_30oct2024.dmp && del mobrecovery_30oct2024.dmp


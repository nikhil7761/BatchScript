
@REM we are creating dmp file using the below command
exp jathcbs/JATHCBS@ebank file=D:\JATHBKP\WEDNESDAYJATH.dmp
exp jathSIGNUAT/super@ebank file=D:\JATHBKP\WEDNESDAYSIGNINFO.dmp
exp jathhsm/jathhsm@ebank file=D:\JATHBKP\WEDNESDAYjathhsm.dmp
exp jathmob/jathmob@ebank file=D:\JATHBKP\WEDNESDAYjathmob.dmp
exp jathsms/jathsms@ebank file=D:\JATHBKP\WEDNESDAYjathsms.dmp
exp jtb/super@ebank file=D:\JTBBKP\WEDNESDAYJTB.dmp
exp jtbsign/super@ebank file=D:\JTBBKP\WEDNESDAYJTBSIGNINFO.dmp


@REM we are creating a  rar file from .dmp file and deleting it as well.
cd /D D:\JATHBKP\
"C:\Program Files\WinRAR\rar.exe" a WEDNESDAYJATH.rar WEDNESDAYJATH.dmp && del WEDNESDAYJATH.dmp
"C:\Program Files\WinRAR\rar.exe" a WEDNESDAYSIGNINFO.rar WEDNESDAYSIGNINFO.dmp && del WEDNESDAYSIGNINFO.dmp
"C:\Program Files\WinRAR\rar.exe" a WEDNESDAYjathhsm.rar WEDNESDAYjathhsm.dmp && del WEDNESDAYjathhsm.dmp
"C:\Program Files\WinRAR\rar.exe" a WEDNESDAYjathmob.rar WEDNESDAYjathmob.dmp && del WEDNESDAYjathmob.dmp
"C:\Program Files\WinRAR\rar.exe" a WEDNESDAYjathsms.rar WEDNESDAYjathsms.dmp && del WEDNESDAYjathsms.dmp

cd /D D:\JTBBKP\
"C:\Program Files\WinRAR\rar.exe" a WEDNESDAYJTB.rar WEDNESDAYJTB.dmp && del WEDNESDAYJTB.dmp
"C:\Program Files\WinRAR\rar.exe" a WEDNESDAYJTBSIGNINFO.rar WEDNESDAYJTBSIGNINFO.dmp && del WEDNESDAYJTBSIGNINFO.dmp


@REM we are sending this rar file to s3 s3://databasebackuprdsebank/DailyBackupDB/
aws s3 mv D:\JathBKP\WEDNESDAYJATH.rar s3://databasebackuprdsebank/DailyBackupDB/Jathbkp/  --storage-class   GLACIER_IR
aws s3 mv D:\JathBKP\WEDNESDAYSIGNINFO.rar s3://databasebackuprdsebank/DailyBackupDB/Jathbkp/  --storage-class   GLACIER_IR
aws s3 mv D:\JathBKP\WEDNESDAYjathhsm.rar  s3://databasebackuprdsebank/DailyBackupDB/Jathbkp/  --storage-class   GLACIER_IR
aws s3 mv D:\JathBKP\WEDNESDAYjathmob.rar s3://databasebackuprdsebank/DailyBackupDB/Jathbkp/  --storage-class   GLACIER_IR
aws s3 mv D:\JathBKP\WEDNESDAYjathsms.rar s3://databasebackuprdsebank/DailyBackupDB/Jathbkp/  --storage-class   GLACIER_IR
aws s3 mv D:\JTBBKP\WEDNESDAYJTB.rar s3://databasebackuprdsebank/DailyBackupDB/JTB/  --storage-class   GLACIER_IR
aws s3 mv D:\JTBBKP\WEDNESDAYJTBSIGNINFO.rar s3://databasebackuprdsebank/DailyBackupDB/JTB/ --storage-class   GLACIER_IR
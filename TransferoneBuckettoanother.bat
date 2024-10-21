@echo off
REM Define the source and destination S3 URIs
set SOURCE_BUCKET=databasebackuprdsebank
set SOURCE_KEY=DailyBackupDB/Jathbkp/MONDAYJATH.rar
set DESTINATION_BUCKET=databasebackuprdsebank
set DESTINATION_KEY=SixMonthsBackupDb/MONDAYJATH.rar

REM Copy the file from the source to the destination
aws s3 cp s3://%SOURCE_BUCKET%/%SOURCE_KEY% s3://%DESTINATION_BUCKET%/%DESTINATION_KEY%

REM Check if the command was successful
if %ERRORLEVEL% equ 0 (
    echo File transferred from s3://%SOURCE_BUCKET%/%SOURCE_KEY% to s3://%DESTINATION_BUCKET%/%DESTINATION_KEY%
) else (
    echo File transfer failed.
)

pause

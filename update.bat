@echo off
setlocal
set "temp=PATH_FOLDER"

cd /d "%temp%"

echo -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- >> log
echo %date% %time% >> log

rem Download the file from GDrive
wget --no-check-certificate "LINK TO DOWNLOAD EXTENSION" -O "web.zip" -a log

rem Check if the download was successful
if %errorlevel% equ 0 (
    echo The file has been successfully downloaded. >> log
) else (
    echo An error occurred while downloading the file. >> log
)


set "zip_file=PATH OF ZIP FILE"

set "destination_folder=PATH OF EXTENSION FOLDER"

rem Make sure that the ZIP file and the destination folder exist.
if not exist "%zip_file%" (
    echo The specified ZIP file does not exist. >> log
    exit /b
)

if not exist "%destination_folder%" (
    echo The specified destination folder does not exist. >> log
    exit /b
)

rem Extracting the ZIP file to the destination folder
echo Extraction in progress.... >> log
powershell -Command "Add-Type -A 'System.IO.Compression.FileSystem'; Remove-Item -Path '%destination_folder%\*' -Recurse -Force; [System.IO.Compression.ZipFile]::ExtractToDirectory('%zip_file%', '%destination_folder%');"


echo Extraction completed. >> log
del ARCHIVE_NAME.zip 
echo archive deleted >> log

rem The extension https://t.ly/jPPDr will reload all installed extensions on Chrome
start chrome http://reload.extensions

echo extension recharge >> log

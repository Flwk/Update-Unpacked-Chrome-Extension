# Update-Unpacked-Chrome-Extension
This **very simple** Windows batch script facilitates the automatic download and extraction of ZIP files from Google Drive or another source. It is particularly useful for automating the process of retrieving files from online sources and extracting them into a specified local folder, and reload the extension.

# Key Features:
- Secure download from Google Drive via direct download link.
- Verification of download integrity and logging of results.
- Automatic extraction of the downloaded ZIP file's contents to a predefined local folder.
- auto-reload the extension on chrome navigator
- Error handling to ensure smooth operation.
# Usage:
- Configure variables such as the temporary folder path, and destination folder according to your requirements.
- Add the link to download the extension (e.g https://docs.google.com/uc?export=download&id=ID_FILE for google drive)
- [Extension reloader](https://t.ly/jPPDr) have to be installed
- Run the script to download and extract the ZIP file.
- Monitor logs to check execution status and any potential errors.
- You can [create a task](https://www.makeuseof.com/automate-batch-files-task-scheduler-windows) in the task sheduler to launch it every day for example 
# Prerequisites:
- Windows with Command Prompt (cmd.exe).
- Internet connection for downloading from Google Drive or another source.
- PowerShell for ZIP file extraction.
- This script simplifies the management of ZIP files downloaded from Google Drive, providing an automated and reliable solution for download and extraction tasks. Feel free to use and customize it to suit your specific needs.

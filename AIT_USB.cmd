@ECHO OFF
REM Batch script to start AIT to scan the local machine.
REM AIT.exe and associated files should be in the same folder as this batch file.
Title Autodesk Inventory Tool

REM Execute AIT to perform a scan of the local machine.
IF DEFINED COMPUTERNAME (
REM Use the actual computer name when available
"%~0\..\AIT\AIT.exe" /c %COMPUTERNAME% /fp /lu /rp /sl /s
) ELSE (
REM If not, use localhost to identify the local machine
"%~0\..\AIT\AIT.exe" /c localhost /fp /lu /rp /sl /s
)
EXIT

Autodesk Inventory Tool v2.2.4.2
Autodesk, Inc
https://www.autodesk.com

Released September 9, 2022


Requirements

Microsoft .NET Framework v4.5.2 or later


AIT Changes
v2.2.4.2
Update LD.Common.WMI to v1.2.3
Update Autodesk file package to replace old style wildcard paths with Recurse="true"
Update installer to populate the APPINSTALLLOCATION property


v2.2.4.1
Scheduled scans now stored in a machine specific settings file not user specific


v2.2.4.0
Update LD.Common.WMI to 1.2.1
Update LD.Common.SecureApp to 1.0.5, which is FIPS compliant
Update LD.Common.Utilities.Helpers to 1.0.12
Update Serilog to 2.11.0
If the wait for a computer scan times out, it will now update the computer log and set a local cancellation token
Registry and File packages have new naming convention
Detect Flexnet Publisher servers even if they are in a stopped state
Facility to 'scrape' files and reg keys via the FilePackage and RegPackage systems


v2.2.3.1
ScanWin
Update LD.Common.WMI to 1.1.10
Change Autodesk Product Code lookup to use Bundle Code if Product Code is missing or did not find product
Autodesk Excel report will now show the Bundle Code even if it is the same as the Product Code


v2.2.3.0
ScanWin
Update LD.Common.WMI to 1.1.9
Update embedded license key


v2.2.2.0
No change in this edition.


v2.2.1.1
ScanWin
Additional validation checks to prevent rare Null Reference exception
Fix for Autodesk report having incorrect Active Directory date formats


v2.2.1.0
ScanWin
Change method of Autodesk product name lookup for PIT files to match updated AutodeskProductCodes


v2.2.0.0
Common
Refactoring based on SonarLint code analysis
Branding changed from Autodesk ScanWin to Autodesk Inventory Tool
Update Serilog.Sinks.File NUGET package to 5.0.0
Update WiX installer package components definitions
Update LD.Common.Logger and LD.Common.Logger.Serilog to 1.0.7

ScanWin
Active Directory discovery now collects additional attributes:
  . Description
  . OperatingSystem, OperatingSystemVersion, OperatingSystemServicePack
  . DistinguishedName
  . UserAccountControl (Is Enabled)
  . WhenCreated
  . Location
Discovered devices are added to Data Store
New command line option for discover only scan, where computers are discovered but not scanned: /do /discoveronly
Update FilePackages.xml to include a new package to collect Autodesk genuine.txt files and decode them to get the unique device id
Update to report to include genuine.txt sourced device id's
Improve FlexLM licence file detection
Update LD.Common.WMI to 1.1.8

ScanWin Viewer
New Scan option 'Discover Computers Only (Do Not Scan)', to perform a discover only scan
Update TaskScheduler NUGET package to 2.10.1
Update MahApps.Metro.IconPacks.Material NUGET package to 4.11.0


v2.1.10.3
Update LD.Common.WMI to v1.1.6
  . Improved FlexLM license file decoding for Vendor Daemon


v2.1.10.2
ScanWin
Fix for null reference exception exporting Autodesk report


v2.1.10.1
ScanWin Viewer
Change WPF font rendering to address fuzzy text on some devices
Exporting reports runs on a background thread so the user interface remains responsive during the export


v2.1.10.0
Common
Update to LD.Common.Logger/LD.Common.Logger.Serilog v1.0.6

ScanWin
Fix Autodesk serial not being populated from Installer Helper decoded contents

ScanWin Viewer
Importing DataStores runs on a background thread so the user interface remains responsive during the import
Added Files tab to view a devices collected files
Added Environment tab to view a devices environmental variables
Added additional fields to the Device Details pane:
  . Operating System Version
  . System SKU
  . Location Name
  . Time Zone
  . Microsoft Shared Computer Licensing


v2.1.9.0
Update Nuget LD.Common.SecureApp to v1.0.4
Update Nuget Newtonsoft Json.NET to 13.0.1


v2.1.8.5
ScanWin
Introduce better recovery from corrupt DataStore.xml files using auto backup files
MemoryFailPoint(32) called before initiating each device scan to assure available memory


v2.1.8.4
ScanWin
Introduce better recovery from OutOfMemory situations
Optimization - WMI instances are manually disposed once device inventory is complete
Optimization - SMB only connects / disconnects once per device
Optimization - WmiClassExists check has reduced memory usage
Additional runtime settings added to log file


v2.1.8.3
ScanWin
Decode the VendorDaemon name from FlexLM log files


v2.1.8.2
ScanWin
Update IpAddressRange nuget to v4.2.0 

ScanWinViewer
Update TaskScheduler nuget to v2.9.1


v2.1.8.1
ScanWinViewer
Implement a fix for a bug in TabControl that causes a crash when using a large custom DPI


v2.1.8.0
ScanWin
Prevent the FlexNet Publisher scan from collecting the same license multiple times
Improve the collection of Autodesk Product Code from PIT file for USER licences


v2.1.7.0
ScanWin
Fix to Total Time Taken to show total seconds and not seconds of the total time

ScanWinViewer
Scheduler tab enabled


v2.1.6.0
Common
New logging system based on Serilog

ScanWin
Collect Operating System Version
Collect System SKU
FilePackage WaitMs changed from ushort to uint to support longer timeout periods
Update to latest LD.Common.XML.* libraries

ScanWinViewer
Update to latest CommonServiceLocator library


v2.1.5.2
No changes for Autodesk.


v2.1.5.1
ScanWin
Fix for Autodesk License Helper based serial numbers not getting populated with Product Code and Bundle Code


v2.1.5.0
ScanWin
For Hyper-V, collect information on the child VMs
Update DataStore importer to be more memory efficient when importing multiple large datastores

ScanWinViewer
SecureCredentials can now be used by entering them for the User and leaving password blank
The Windows interface validates that the SecureCredentials is a valid encrypted string


v2.1.4.1
ScanWin
Collection of Autodesk Product Code and Bundle Code also for User/MSSA types from PIT file


v2.1.4.0
ScanWin
Filter FlexLM environmental variables to only include Autodesk ones when collecting license files
Fix potential null reference error when collecting Windows Prefetch files
Prevent the collection of the same license file multiple times
Serial number scan now additionally collects Product Code and Bundle Code
Scout report includes four additional columns:
  . PC_Type      - Physical/Virtual
  . VM_Type      - The virtualisation platform
  . Product_Code - Autodesk product code
  . Bundle_Code  - Autodesk bundle code


v2.1.3.1
ScanWin
Updated and simplified Autodesk PIT file decoder with 32/64 bit support.


v2.1.3.0
ScanWinViewer
Fix clipping with User Name and Password fields in the Scan tab.


v2.1.2.0
ScanWin
Correct text alignment in the ScanWin usage
Registiry key attribute selection is no longer case sensitive

ScanWinVewer
DataStorePath setting added in ScanWinViewer.exe.config to match ScanWin.exe.config, both should have the same value


v2.1.1.0
ScanWin
Ability to parse additional software install date formats: '2020-12-30 00:00:00.00' and 'Dec 30, 2020'
Parameter /? can now be used in addition to /h /help to display command line help

ScanWinViewer
New button on the View tab to Refresh the data which will cause the data store to be reloaded


v2.1.0.0
ScanWin
Fix for issue importing old format data stores from the ScanWin.exe /import command
Installed Software scan now includes all logged on users registry hives
Revamped user interface with improved layout and styling
New light and dark theme modes with instant switching


v2.0.9.7
ScanWin
Hardware scan now correctly identifies UEFI VMware virtual devices as virtual


v2.0.9.5
ScanWin
WMI RegKey recursion now includes all subkeys rather than first level subkeys only


v2.0.9.5
ScanWin
Fix for collecting Network Adapter information from Windows 2003 servers
Fix for registry scan package decode method defaulting to incorrect value


v2.0.9.4
ScanWin
Fix for issue where data stores could not be imported


v2.0.9.3
ScanWin
FlexLM servers that use a folder of licences keys now supported
Automatic selection of relevant scan types removing the need to specific the /rp /fp /sl /lu command line switches
Export will include devices that were last scanned up to 365 days ago


v2.0.9.2
ScanWin
Fix for LD.Common.WMI error "Unable to cast object of type 'System.String' to type 'LD.Common.WMI.Common.RegResultItem'"


v2.0.9.1
ScanWin
ScanWin sets the ERRORLEVEL when exiting: 0=Success, 1=Error
DataStore XML format changed to include DataStore level attributes including CreatedDate, UpdatedDate, Log
MD5 checksum file is encrypted to prevent it being updated manually
Backwards compatability for loading older DataStore and MD5 files
DataStore checksum mismatches logged to the DataStore log rather than separate .log file
Filter environment variables based on Autodesk defined values

ScanWinViewer
Fix for wrong file name being shown in the Save dialog.
PrefetchFilter used to filter running processes
Password protected Scout report still enables Autofilter and Sort actions


v2.0.8.7
Common
ScanWin MSI Installer not signed so it can be signed using the Autodesk code signing certificate

ScanWin
ScanWin.exe not signed so it can be signed using the Autodesk code signing certificate
Autodesk Scout report now output as a read-only Excel file with three user editable columns
MD5 checksum is created when saving DataStore to validate integrity on loading
DataStore log file created to log incidents where checksum did not match when loading DataStore

ScanWinViewer
ScanWinViewer.exe not signed so it can be signed using the Autodesk code signing certificate
Custom manifest included to request user's highest available permission, which will cause UAC prompt to be displayed


v2.0.8.6
ScanWin
Update to LD.Common.Prefetch to address prefetch filter incorrectly permitting sub-matches


v2.0.8.5
ScanWin
Update to LD.Common.Logger to strip out extended characters \t \r \n


v2.0.8.4
ScanWin
Main icon in ScanWin.exe and ScanWinViewer.exe are now the Autodesk icon


v2.0.8.3
ScanWin
Fix issue with data store importer matching multiple devices with 'localhost' discovery name
Data store importer will report invalid zero length data store files during import
Record actual device name for failed 'localhost' scans to prevent merging multiple failed scans


v2.0.8.2
ScanWin
Add support for detecting Nutanix based virtual machines
ProgramData folder used instead of Windows\Temp for executing scripts negating UAC permissions issue for local scans
ADSKFLEX_LICENSE_FILE data now comes directly from environmental variables scan rather than file package scan
Fix issue with hardware scan failing on older Windows versions when collecting network adapter data


v2.0.8.1
ScanWin
Detection of Windows having Hyper-V feature installed
Fix for potential null reference exception when performing Last Update scan type

ScanWinViewer
New Hyper-V enabled attribute added to Hardware section


ScanWin Changes
v2.0.8.0
ScanWin
WMI Library updated to collect and decode Windows prefetch files
New /lu /lastused scan option to collect Software Last Used data from Windows Prefetch files

ScanWinViewer
New 'Software Last Used' filter to filter on devices that have collected Software Last Used data
New 'Software Last Used' section to show the collected Software Last Used data for the selected device
Software Last Used scan option enabled by default


v2.0.7.1
ScanWin
Fix for CultureNotFound exception when parsing the MSI install date for some cultures
Updated AutodeskProductCodes files
Updated Autodesk ADLM file decoder to work with Japanese ADLM files


v2.0.7.0
ScanWin
Remove CRLF from error messages when present
Scan errors are now added to an errors log for each device
Scout report now includes 'Error' source listing device scan errors
LastSuccessfulScan date is only populated if the scan completes with no errors

ScanWinViewer
New 'Has Errors' filter to filter on devices that have scan errors
New 'Errors' section to show device scan errors


v2.0.6.12
ScanWin
ADLM data is now collected from the HTML files rather than the XML files.
ADLM data in Scout Report now has the action 'Activation Request'.
ADLM activation date is now collected and output into the Action Date field in the Scout report.


ScanWin Changes
v2.0.6.11
ScanWin
Added /cs /cancelscan options to cancel an in progress scan retaining collected results.
Correctly handle case where an invalid secure credential string is provided.
Fix for software install/uninstall log entries having trailing dot.
Fix for scout report not exporting software install/uninstall entries.

ScanWinViewer
Option to cancel an in progress scan retaining collected results.
Added logged on user and serial number to device list data grid for easier reference.
ScanWin is now called using encrypted secure credentials rather than plain text.
Added device list right click context menu to copy device name.


ScanWin Changes
v2.0.6.10
ScanWin
Add support to decode install/uninstall event log items in additional language:
  . Thai
Force CSV exports to use UTF8 encoding rather than relying on system defaults.


v2.0.6.9
ScanWin
Add support to decode install/uninstall event log items in additional languages:
  . Dutch
  . Hungarian
Introduce Named Pipes listener to receive command to cancel the active scan.
Fix issue where using USB memory stick to scan several devices using 'localhost' removed previous 'localhost' entries.


v2.0.6.8
ScanWin
Add support to decode install/uninstall event log items in additional languages:
  . Chinese Simplified
  . Chinese Traditional
  . Czech
  . French
  . German
  . Italian
  . Japanese
  . Korean
  . Polish
  . Portuguese Brazil
  . Portuguese Portugal
  . Russian
  . Spanish
  . Swedish


v2.0.6.7
Initial Release
$ErrorActionPreference = 'Stop';

$packageName= 'gmvault'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = gi "$toolsDir\*.exe"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  file          = $fileLocation
  softwareName  = 'Gmvault*'
  silentArgs   = '/S'
}

Install-ChocolateyInstallPackage @packageArgs

$desktopPath = [Environment]::GetFolderPath("Desktop")
$localAppDataPath = [Environment]::GetFolderPath("LocalApplicationData")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\gmvault-shell.lnk" `
  -TargetPath "$localAppDataPath\gmvault\gmvault-shell.bat" `
  -IconLocation "$localAppDataPath\gmvault\gmv-icon.ico"
  
#Don't need installer anymore
rm $toolsDir\*.exe -ea 0 -force

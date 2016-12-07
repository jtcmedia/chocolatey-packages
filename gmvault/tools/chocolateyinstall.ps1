$ErrorActionPreference = 'Stop';

$packageName= 'gmvault'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://bitbucket.org/gaubert/gmvault-official-download/downloads/gmvault_installer_v1.9.1.exe'
$checksum32 = '75cca48cd34b14971fb6a51f86104a485e263b972b2f5cdb9344ed639cf889d1'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Gmvault*'

  checksum      = $checksum32
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

$desktopPath = [Environment]::GetFolderPath("Desktop")
$localAppDataPath = [Environment]::GetFolderPath("LocalApplicationData")

Install-ChocolateyShortcut `
  -ShortcutFilePath "$desktopPath\gmvault-shell.lnk" `
  -TargetPath "$localAppDataPath\gmvault\gmvault-shell.bat" `
  -IconLocation "$localAppDataPath\gmvault\gmv-icon.ico"

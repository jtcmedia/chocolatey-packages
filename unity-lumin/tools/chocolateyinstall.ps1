$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/2ab9c4179772/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.0f1.exe'
$checksum64     = 'e4bb0ad0324818fc80c418024142f10d73f2c9c5ef8544a564b3a3eb485ebaa6'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9ac1ff5ca45b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.21f1.exe'
$checksum64     = '8c6687ce6f323103a1db942f87f47af90bdfbc8fc4504333011ff501716607f1'

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

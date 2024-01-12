$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/381b4941466e/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.5f1.exe'
$checksum64     = 'b31a606d09a436430e5146395d95fdea2a7a0c79524d6c320481e0545a57a75b'

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

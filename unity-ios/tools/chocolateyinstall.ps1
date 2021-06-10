$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4d8c25f7477e/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.11f1.exe'
$checksum64     = '84b6daff05d944526eec3682e3d20f33588e0c46805ba2c507a1107336205803'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c1aa84e375f6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.3.15f1.exe'
$checksum64     = '4df5623f2d06d35c9bb8664085644d0c61c40eaad8bb87bc94584294005b8034'

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

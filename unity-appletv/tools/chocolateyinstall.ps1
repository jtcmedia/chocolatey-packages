$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a008fa768e6c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.0f1.exe'
$checksum64     = '6cce695904a7d0cbad11c276217f5eba2e594969436e21c68ce5a767c7c3e82d'

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

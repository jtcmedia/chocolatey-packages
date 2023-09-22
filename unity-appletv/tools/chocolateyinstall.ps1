$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9492f7722ddd/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.14f1.exe'
$checksum64     = '85ae37a31df483b9acd2e2d2e630d70577ce2551034332608f7b3d81f62fb934'

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

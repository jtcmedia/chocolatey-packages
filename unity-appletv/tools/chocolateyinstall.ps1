$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/334eb2a0b267/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.24f1.exe'
$checksum64     = '96ca4fe41fa860e7f57a9f20332e8f66e1c5c4ca22a9fe67da0ffe6d4ac29360'

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

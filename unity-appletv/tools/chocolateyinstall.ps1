$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8c4e826ba445/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.2.6f1.exe'
$checksum64     = '989f07fddda0be3b4b8e008482e0f4856e1e06b7aa68bb6ac094f535cb88799b'

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

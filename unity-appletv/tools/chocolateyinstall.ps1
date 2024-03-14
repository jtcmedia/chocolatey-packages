$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/eeca29774eb5/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.14f1.exe'
$checksum64     = 'aee63c6727b1aaffce6fe500d307db0a180f21a10f5ccf7c60ba6bfd74697187'

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

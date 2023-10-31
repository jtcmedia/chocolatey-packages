$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2b639e48c919/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.18f1.exe'
$checksum64     = 'b67b653e609a8a1d4ffe88424ab65d127fedfd7005eb2e45514c7b5591138976'

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

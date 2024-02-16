$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/61c2feb0970d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.20f1.exe'
$checksum64     = 'accfcba15657837c0e405feee0978842e85bfc35c945c780bde839c6f829bf47'

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

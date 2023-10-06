$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e5ad54273a6f/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.16f1.exe'
$checksum64     = 'b8ee4c808b373b42cfd311325e317404eaefe1d3abc123aa88424f778ac58ae8'

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

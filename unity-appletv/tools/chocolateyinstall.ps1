$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/611a2ee54063/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.4f1.exe'
$checksum64     = '419fe7ec8b92bb1eeab2ebd41a181f62f36729433f8c425906e85465631e6d3f'

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

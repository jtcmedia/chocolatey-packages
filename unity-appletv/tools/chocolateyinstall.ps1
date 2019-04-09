$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8afd630d1f5b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.3.12f1.exe'
$checksum64     = '1d3e048cda25dc4c90f277d0b3091e0e983f047ca77fd9199249d9cb4622ab36'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/915a7af8b0d5/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.3.33f1.exe'
$checksum64     = '21e14e23e3c24d814f65c046053c3e8093929c451d946b885855e56a142e081b'

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

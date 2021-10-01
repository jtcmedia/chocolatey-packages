$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b50729e604a9/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.23f1.exe'
$checksum64     = 'fb189a36de377bc2e05e2d79254b1f4354ff9767d2d0081ce8816d91810bb386'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5e24f28bfbc0/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.1.13f1.exe'
$checksum64     = '1a1514b16fa545e36d376b514aa92bac1da04c20ee5d59d3b4e400fd0dca0dcd'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/35a524b12060/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.20f1.exe'
$checksum64     = '3b8c46ec1627608403acc66c7f3afdd599d5804726ca46fdc696ca1d6dde78ac'

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

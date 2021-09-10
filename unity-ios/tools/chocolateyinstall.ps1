$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/be552157821d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.20f1.exe'
$checksum64     = '7fc3ebe144279492533c53b03bcbd63f3455266b90e71df949899cc0e7b6f52c'

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

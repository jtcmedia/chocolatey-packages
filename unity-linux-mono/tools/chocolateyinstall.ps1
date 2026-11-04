$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/237b6593792b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.8f1.exe'
$checksum64     = '57fe26eac1469f392e212e6267b5099d4853b7ab464d04b1e9c51d4bfd521b53'

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

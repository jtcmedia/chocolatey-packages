$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/dfe9eb92cac5/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.2f1.exe'
$checksum64     = '038ced123045448602a7c44912551ca839b069e4cb08aa62058a4a76d5bca3e9'

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

$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/396a1c6fe404/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.17f1.exe'
$checksum64     = '0235886c34d0f041e95a607cb0aa01412e54006b3c6da95d04def4a77a7d890c'

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

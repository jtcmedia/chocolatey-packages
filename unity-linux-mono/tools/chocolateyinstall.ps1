$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ff7e140968b4/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.14f1.exe'
$checksum64     = '3eac5bcf76f04c065ea4b3a211e13e9ece28a7bba6c8e443973acfc99a4b7a2e'

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

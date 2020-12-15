$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3721df5a8b28/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.2.0f1.exe'
$checksum64     = '95fcf1f09bbff808a8a061d15cacf10415720724c9aac72adad9d93fa2b30f4b'

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

$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f18e0c1b5784/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.1f1.exe'
$checksum64     = '554a38c982805727438b681a563249bf398aa089f187675942fcf1ead516ebd5'

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

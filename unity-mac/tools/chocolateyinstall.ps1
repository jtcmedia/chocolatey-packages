$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/99ba6aa4c552/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.4f1.exe'
$checksum64     = '3681dcfe534520d760edbb7003fd5b1f7d79391127f4614f0bf519752a36fa23'

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

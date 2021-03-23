$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/77a89f25062f/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.3.1f1.exe'
$checksum64     = 'd19218e6e5d23c7e95be1d8aa3ed65a9d07c3c5a69e394ee36a1bb97dc00353d'

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

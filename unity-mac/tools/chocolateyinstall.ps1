$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fa717bb873ec/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.1.4f1.exe'
$checksum64     = 'af69b039991b1baa0e09206f9b96780b362e5ac765ccda348d7d2599b0a2af45'

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

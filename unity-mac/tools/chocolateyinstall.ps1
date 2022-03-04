$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/bcb93e5482d2/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.14f1.exe'
$checksum64     = 'da1c320db420faa3028879acc79d8079bdde15b686ea0f1009567faa2f9ca2b2'

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

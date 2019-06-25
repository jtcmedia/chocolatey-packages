$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7938dd008a75/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.1.8f1.exe'
$checksum64     = '99643cd4a730760c3c0e9aba9564af01625e2fd95c5fd5f6a208d50af104ac55'

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

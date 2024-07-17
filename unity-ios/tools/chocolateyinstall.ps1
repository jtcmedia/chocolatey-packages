$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c5d5a7410213/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.38f1.exe'
$checksum64     = '34e451716175f2d121d28bd3973114207b6a708859a17aca8512c209c9222d55'

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

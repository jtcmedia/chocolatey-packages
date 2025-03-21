$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/97272b72f107/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.43f1.exe'
$checksum64     = 'f1fedc61eec323aab8054294df99246a37957a31bd7aec26449023268b369b43'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9ea152932a88/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.1.0f1.exe'
$checksum64     = '20afa1a2512bf252e10edf319d8b1397e3a2ed234f71b705e4c9ec98d7200fe5'

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

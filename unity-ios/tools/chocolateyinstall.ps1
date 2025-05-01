$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7197418f847b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.1.1f1.exe'
$checksum64     = '01246e20d2a39858fa5bca082b98028701025d03423cf18d33a610d5fced67b8'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/237b6593792b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.8f1.exe'
$checksum64     = 'f95b12304dbf1489958869412e258f7a5b50762e208e3d1cd35170a31e29af0d'

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

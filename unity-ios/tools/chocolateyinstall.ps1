$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/67bef3276ff1/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.1.16f1.exe'
$checksum64     = '4b1f48afae7fb44a8dd1957b866bd57209b75672f11c4c4afd1a2fc11caa7cc5'

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

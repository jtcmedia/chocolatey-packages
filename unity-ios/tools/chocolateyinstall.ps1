$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a13dfa44d684/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.45f1.exe'
$checksum64     = '2a5dfdad637c03f9cb56d6b9594e02dd7ad6beefcccb00e690d36cd14d1ea539'

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

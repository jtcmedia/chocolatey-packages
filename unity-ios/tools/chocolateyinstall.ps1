$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e767a7370072/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.15f1.exe'
$checksum64     = '7cb6b98f4d5819283eac16fc8196b278d6b1947d68c5c0e61d1161f0dafd3265'

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

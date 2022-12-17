$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/75bff06b76bf/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.43f1.exe'
$checksum64     = '3446f4b1e9c06c02345466d238633fa5c542f419e52db378dadd945ec710a1a1'

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

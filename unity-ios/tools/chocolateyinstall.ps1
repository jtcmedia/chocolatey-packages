$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8af3c3e441b1/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.12f1.exe'
$checksum64     = '510e6bb4361c4bb014fc112b9b82a789c53dc548bfb987f5a9cba3f7843e48ab'

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

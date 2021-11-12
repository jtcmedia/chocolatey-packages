$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5e2b1e92c7f8/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.2f1.exe'
$checksum64     = 'ed801eb645401a96d7355204e9070ab35a076e581ff04167c389118ac1e56e9f'

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

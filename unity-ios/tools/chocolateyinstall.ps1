$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/157d81624ddf/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.40f1.exe'
$checksum64     = 'fc46d2ef1d39984715601f6e5431d5ebd411800b4dc59b00dd815dccaf8c403f'

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

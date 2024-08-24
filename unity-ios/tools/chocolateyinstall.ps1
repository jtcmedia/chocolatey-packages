$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ae37dbaefed8/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.16f1.exe'
$checksum64     = 'bfb9940bcccee81de7d514049a3ca691643a525d6e5565a2a7cdfef547e76c8a'

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

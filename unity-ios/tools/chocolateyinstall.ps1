$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/377f5a9787ef/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.0b9.exe'
$checksum64     = '23b66030c7586adeee74a986c463b8f170865b10c27443bcb20e983af51475f4'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/05208a74e9aa/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.20f1.exe'
$checksum64     = 'dc63f4b628e027f3ca345be1fff7961bc2190baff0283f583908caeffb2bb2ac'

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

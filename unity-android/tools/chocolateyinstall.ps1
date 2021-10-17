$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b6f2b893ea32/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.1.25f1.exe'
$checksum64     = 'ecfd045c670ffde45da5a74bffcb458db69613a9b80f6debee4acc75bfaaf2e6'

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

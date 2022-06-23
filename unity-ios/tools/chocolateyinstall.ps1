$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/40eb3a945986/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.5f1.exe'
$checksum64     = 'b12dd83ae326ccfe7c3e112d13a1db1c3dc8d750c2ba41b97bb79005dcccc64e'

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

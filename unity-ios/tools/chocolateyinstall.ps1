$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/94d194ca434d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.44f1.exe'
$checksum64     = 'db93573575563265555cac3e503f6ed38c0e2bf3eafb82df6d866c8ce9842ebb'

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

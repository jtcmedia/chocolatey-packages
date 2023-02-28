$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/996aee41dc57/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.8f1.exe'
$checksum64     = '75fdb46f682e5f4972d3000efd9d69ab24197026dc7b51cf071ba684b1f27267'

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

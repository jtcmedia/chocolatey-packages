$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2fd7b40534d1/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.19f1.exe'
$checksum64     = '7e31499b529c283e44a2185dff94b4ff0199d07decee0ec3ae78fc51c1e24eeb'

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

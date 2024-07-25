$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4e1b0f82c39a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.39f1.exe'
$checksum64     = '4887b5d413c10d121c618f9cc95f94cf7634a34637d00b67c9e2be0a6af45cb2'

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

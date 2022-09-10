$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7321c9670bc2/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.16f1.exe'
$checksum64     = '94bacaf633d5e4c87737c0102f45f7ac4b2dd179b27819f33363f16d50702517'

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

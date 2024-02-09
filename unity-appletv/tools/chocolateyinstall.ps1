$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/157b46ce122a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.35f1.exe'
$checksum64     = '7d5e0dc516ce9dfacad38dd5faa45a32e637331950c7e2b039b6db76e106a6d5'

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

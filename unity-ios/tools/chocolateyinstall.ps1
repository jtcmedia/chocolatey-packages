$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5e24f28bfbc0/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.13f1.exe'
$checksum64     = '565c5c1230816a400dc2f1bb21e448a694d064e306261b89676c6f411a5ed33f'

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

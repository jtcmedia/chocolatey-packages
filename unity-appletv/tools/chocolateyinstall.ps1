$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ff7e140968b4/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.14f1.exe'
$checksum64     = '00c2df35bf2288d602ae8d09273adff88e94dbd2f0ff8b184d617f96bac3cb94'

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

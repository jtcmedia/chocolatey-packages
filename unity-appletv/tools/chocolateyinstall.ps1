$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1d952368ca3a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.3.4f1.exe'
$checksum64     = '418df0f2e94f0571f9c4bfa25fd08e1eba477852ff5e7604dcf7ed43b704585a'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c96f78eb5904/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.2.7f2.exe'
$checksum64     = '6d9059787cfcb7484ce691504456003f0a393c326793a31bb8f58687b2f4286b'

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

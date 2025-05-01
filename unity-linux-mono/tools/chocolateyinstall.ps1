$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7197418f847b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.1.1f1.exe'
$checksum64     = '9b22bac7c4e603d9e21b49cadb53430f1466e2e3863c5dc5a9b2e0c528a74616'

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

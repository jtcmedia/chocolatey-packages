$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d91bd3d4e081/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.45f1.exe'
$checksum64     = '816853abc270f07227d8071a74ed3d2ec3bb1b9f34943e77d0f42a048c16d3c9'

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

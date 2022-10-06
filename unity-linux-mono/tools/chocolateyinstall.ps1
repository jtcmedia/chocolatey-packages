$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2fd7b40534d1/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.19f1.exe'
$checksum64     = 'c3cf7cf5cba38b2b8deedbed2b0be410d0b820093b49ea8a3facb96979cc5eca'

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

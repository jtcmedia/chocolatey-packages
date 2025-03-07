$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/249fe0a196c2/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.0a6.exe'
$checksum64     = 'd6c1fe2e3f8bfb6ff45cf63c38cade3da25b9bb64d0098b68daf4c8d54554021'

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

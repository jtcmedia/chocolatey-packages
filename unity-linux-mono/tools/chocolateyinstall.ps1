$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e12ab2d6a089/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.14f1.exe'
$checksum64     = '5e0139527ecfd2159d54daaa26c523b6dc85f94f5c5316419cca8922348a4ed5'

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

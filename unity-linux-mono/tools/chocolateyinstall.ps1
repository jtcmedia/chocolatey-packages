$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c1aa84e375f6/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.3.15f1.exe'
$checksum64     = '63f7a3e42941aea89b6c54cc1ac19b498fd0653c209fbbb4683842a55f49232e'

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

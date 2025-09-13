$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/17550c9bb584/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.4f1.exe'
$checksum64     = 'ae0539e29ed579d23dc01fb36c8ba948983679591ea770b5fc3860107786147d'

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

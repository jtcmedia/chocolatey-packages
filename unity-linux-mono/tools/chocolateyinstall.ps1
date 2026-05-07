$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/81a3023a9d59/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.0b6.exe'
$checksum64     = 'cbf101a208bf49a952ba9caa694a2fa5c2fea86b1e34319b779a0ab5035c286d'

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

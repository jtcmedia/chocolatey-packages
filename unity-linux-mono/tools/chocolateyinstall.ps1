$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2bdac9ac0d74/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.0b2.exe'
$checksum64     = '9fc0c63fa6048c26eff1e15568ea815ee45c502e58d7ef13c81c815aabf00736'

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

$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f99f05b3e950/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.62f1.exe'
$checksum64     = '548e7b40e339ba8d2e70ede94edd9cb7eaee80810c6a3e7fea87cb4b3caebc45'

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

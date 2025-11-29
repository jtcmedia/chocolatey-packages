$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9438f9b77a46/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.63f1.exe'
$checksum64     = '3b9ed919f456d982b60654ee2a9d0ce6dfedf82bc2fc124aa6f141cfff2fcfd7'

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

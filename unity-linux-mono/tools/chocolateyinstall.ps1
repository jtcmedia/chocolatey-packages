$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1c7d0df0160b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.10f1.exe'
$checksum64     = '73bbf7ba36cbcc0a0431712b866dcb5b754fe40fb2c75a941968fac91a820929'

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

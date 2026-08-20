$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b57deb96f08d/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.9f1.exe'
$checksum64     = '5915c2e12310448092bb20867fcba795015c0d2322b351cf7ae3febb9c90711f'

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

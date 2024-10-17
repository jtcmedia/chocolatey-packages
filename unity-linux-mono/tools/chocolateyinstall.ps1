$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0da89fac8e79/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.45f1.exe'
$checksum64     = '3d54b9774f661da8fd965d90d6e6c4f39ef36ab10c456b6a63ec6302234d1259'

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

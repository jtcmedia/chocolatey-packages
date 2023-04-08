$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5ef4f5b5e2d4/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.47f1.exe'
$checksum64     = '9743c50e00a88f40874a4700d5dbc5ea324cb8c97f63d535303d83d201e8fc97'

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

$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8c45277fb9c5/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.9f1.exe'
$checksum64     = '459ca26a011b2209c3a7bfaf655c8561889f1f386fab65d77f948b6e67c968d2'

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

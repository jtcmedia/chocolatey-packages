$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8af3c3e441b1/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.12f1.exe'
$checksum64     = 'cc51aa35c4bebe9b316fd4187d6d4d5043cc75894be29e02c1ccb696eece8758'

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

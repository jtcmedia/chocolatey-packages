$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b6c551784ba3/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.22f1.exe'
$checksum64     = 'b8ebf4381e1e9e011057c66fddd6e8d1f0d078729e321f0a2f9bcb3ef58f4a22'

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

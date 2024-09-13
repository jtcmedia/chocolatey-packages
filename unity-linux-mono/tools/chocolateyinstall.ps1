$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/302b264628f9/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.19f1.exe'
$checksum64     = '801543e3dfda7b0aab0223f1399539a3c95dd1ba576b44ed0e4262a1c69aef46'

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

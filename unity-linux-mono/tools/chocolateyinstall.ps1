$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fb93bc360d3a/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.46f1.exe'
$checksum64     = 'e07ebeaac19dd151dfadb173440872e4d44f5b1e3520874089e353b9faa678a1'

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

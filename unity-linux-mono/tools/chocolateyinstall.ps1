$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/95e1b8cf7a6b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.17f1.exe'
$checksum64     = 'cc23f30a4c82ec3630ee0fd2529f957e55e8e936dcdfdbb9941ef9c382b8dc4c'

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

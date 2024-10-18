$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1c4764c07fb4/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.23f1.exe'
$checksum64     = '90fa14ade84f642c8d55d3955a6dfce65bd123262cbeba977bddf2029f41591d'

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

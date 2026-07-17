$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c9ba695d4f07/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.3.20f1.exe'
$checksum64     = 'd3a70b44912f0ce21ca9b1ea198b20a09072bd6df4ed279d239a37d1cbc95ccd'

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

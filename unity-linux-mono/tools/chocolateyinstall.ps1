$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/88b47c5e7076/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.0f1.exe'
$checksum64     = 'a3d3354cbdbb9ffb29192308f81e0010396831ba6205871c9f5d38dc94c145cf'

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

$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a206c360e2a8/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.31f1.exe'
$checksum64     = '2ded63d4601d1b36849b951e79e6a5771c367aaed752ec89664696c4fe82a2e9'

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

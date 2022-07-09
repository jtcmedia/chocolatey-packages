$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7da38d85baf6/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.6f1.exe'
$checksum64     = '8fbb9f3c2fa1954bf11dfe2541fd3d1facfc6f7f174289d41601a18026050f00'

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

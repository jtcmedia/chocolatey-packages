$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/07e076b6d414/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.9f1.exe'
$checksum64     = 'ce74294809aca6b5c40c9cb85fddbc3d1b72417e7e791dd83ce2c020b3f42677'

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

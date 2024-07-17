$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c5d5a7410213/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.38f1.exe'
$checksum64     = 'a4c71433a81f892170469f36c09b0ea42fbe2a517ee5677b07e4a9f9506ad46f'

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

$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d0d63d039a6f/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.0f1.exe'
$checksum64     = '66f548d2b4135c16598e9f62d712c816ce1c82bd186e7e404bbcce466901d842'

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

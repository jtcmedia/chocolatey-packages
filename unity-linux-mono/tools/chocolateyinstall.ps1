$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/53d4abb44f07/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.0b7.exe'
$checksum64     = '06a55b90e3590a2cccfdc90b4fdf85f0552195da65d43f35763d5fbc227a8958'

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

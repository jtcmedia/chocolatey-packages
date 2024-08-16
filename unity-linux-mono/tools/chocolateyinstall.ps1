$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6a96561936c0/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.15f1.exe'
$checksum64     = '933ef17002c8394fd19ec69fa60d3cc1760275875ab4e3623b2a5d9c9e9b5519'

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

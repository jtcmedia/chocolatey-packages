$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4fead5835099/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.2.1f1.exe'
$checksum64     = '56350564b978173f7d86b51f69fe3a642bc353063f36754c3b6fe072a1d4e9a1'

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

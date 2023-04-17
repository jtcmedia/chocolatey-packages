$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/213b516bf396/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.23f1.exe'
$checksum64     = '21ae7abeca501c8911ffb02280219e3beefd869c54cdf719a411c19498590821'

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

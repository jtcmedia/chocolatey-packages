$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b0a1d6caadd2/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.4.11f1.exe'
$checksum64     = '62aaeccaa913443e8db56eaa85b385fd7b71b423ea52aa6778bf999b0e026f33'

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

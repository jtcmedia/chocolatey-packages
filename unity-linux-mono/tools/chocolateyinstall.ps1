$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9c7b5e468860/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.56f1.exe'
$checksum64     = '9fba2aaf33991a92a7e663bdc7dbe89c526e2378b6a6cf863e89788cdce1403a'

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

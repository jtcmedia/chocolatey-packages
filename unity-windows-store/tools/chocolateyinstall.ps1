$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0c6e675195cf/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.2.18f1.exe'
$checksum64     = 'f45dd75fc0e632fb111c3c8b07a98a22e29f0bb1d5f55ba1e646a63e11b2472a'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

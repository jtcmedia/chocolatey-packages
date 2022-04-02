$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0c6e675195cf/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.18f1.exe'
$checksum64     = '97466a4224727031e12b35c5e6b5d14a671ef8595bb8499e57d63bb9bb3a8a11'

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

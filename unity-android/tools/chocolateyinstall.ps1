$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/de66c00feac7/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.0b2.exe'
$checksum64     = '8e26f591241b907eb97dbb9b2a45db27ed59f46860fb8ccb404881c6eef95199'

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

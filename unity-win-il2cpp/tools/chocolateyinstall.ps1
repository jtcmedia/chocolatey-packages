$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/de66c00feac7/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.0b2.exe'
$checksum64     = '3075a1b6dd99457839af4cedb9e44a787af683ef9d844cd7635f5c14c49beb38'

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

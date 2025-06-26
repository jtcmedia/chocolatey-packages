$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f57a55ac740d/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.0b7.exe'
$checksum64     = '87d05c40f1d9da99380c50c4c23074b7d2960eb183b796c27dab2a7dba64b32b'

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

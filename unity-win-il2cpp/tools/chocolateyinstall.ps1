$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2bdac9ac0d74/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.0b2.exe'
$checksum64     = '2b43fd60c2e9eab1b651958853fd3d050c442dad79e1f61ce83f0cfcdf5d763c'

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

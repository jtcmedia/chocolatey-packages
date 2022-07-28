$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/09bebd6e9324/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.1.11f1.exe'
$checksum64     = 'a68dbbee47c91e6b6dbb538a967e9f6c472d9609ff08293c4185b2bd7b254f94'

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

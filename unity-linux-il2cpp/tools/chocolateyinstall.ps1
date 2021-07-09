$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/51d2f824827f/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.14f1.exe'
$checksum64     = '9fb7107b75aeb7f9d9cfb7f808299220c6aaac7d00b31bd0fd25df513a1ab389'

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

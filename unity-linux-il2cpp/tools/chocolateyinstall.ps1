$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/019e31cfdb15/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2019.4.37f1.exe'
$checksum64     = 'bdcc9c2aca4b7cad2bce4bfc9c0b16831999d49bf93d9307edd4134b6361cd43'

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

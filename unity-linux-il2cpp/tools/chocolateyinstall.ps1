$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/54cb9bda89c4/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.17f1.exe'
$checksum64     = '555f69971a63dc5dbbf98a8a9cf9eb55be01cfce4366bf95d5145fe1f3c62cb7'

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

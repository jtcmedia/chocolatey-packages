$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6fdc41dfa55a/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.1f1.exe'
$checksum64     = 'fc0aa666c79ad45053a485c24d830286045a270014ad92c029a5c6601dd938b3'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88c277b85d21/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.47f1.exe'
$checksum64     = 'ce0e29c7a842ee0f277fd0e876c0dc5007a28e9dfd7624f4cfe57a9b66c0b6c7'

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

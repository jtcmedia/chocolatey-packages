$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b2e806cf271c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.32f1.exe'
$checksum64     = 'fc4a3e0749c8a53d1cc399f7b7727e67d6b3bf0a7d4d3519d862af9b600f397c'

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

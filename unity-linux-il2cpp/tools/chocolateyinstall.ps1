$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3b8567f665bb/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.15f1.exe'
$checksum64     = 'da6ca5c4bf59d54a44edbb390006d6212537689691f04891951802a2eaff4faf'

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

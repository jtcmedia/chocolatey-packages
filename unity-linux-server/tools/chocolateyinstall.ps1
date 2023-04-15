$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/30d813e1a2a9/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.15f1.exe'
$checksum64     = '5159cb32a20b9c91cf3e27da3e5e91c139110b5f4c37cd41ef8b56c631311685'

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

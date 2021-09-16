$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f2d5d3c59f8c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.21f1.exe'
$checksum64     = 'e6d2137d26219943c886e8876cd4e988397e5d53888ba930c2565e6129ea1210'

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

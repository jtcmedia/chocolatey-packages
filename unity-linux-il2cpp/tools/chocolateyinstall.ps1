$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/da872d7b2f71/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.0b8.exe'
$checksum64     = 'd2bd2cc73b487e11d85f445c90433ca36078725c56fc6a92e58b1016628e9fec'

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

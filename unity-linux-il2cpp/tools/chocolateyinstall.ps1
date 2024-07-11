$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/340ba89e4c23/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.37f1.exe'
$checksum64     = 'f33c8b37d0e87d34131e07406205555ba8276a268deef5f2e8c0b1d092a86e2b'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feeafc12a938/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.4.10f1.exe'
$checksum64     = 'a74b23bf42310fa16ad5729735017e040a0d926fd025f5f122a21f186fd4e41e'

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

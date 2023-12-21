$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d2c21f0ef2f1/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.16f1.exe'
$checksum64     = 'b2e709376e8d23201b4d31f6d81b7dc012b0bd106a3caf860e47e2719c1c15a1'

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

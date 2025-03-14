$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feb9a7235030/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.42f1.exe'
$checksum64     = 'de364ad4037fb135f9d60a2bf97f3de76db8c88fcd974c521f12c2ae4d0e1487'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/56df1dd3b76d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.0a4.exe'
$checksum64     = '406f19f2494cd26d48c3a0f3bdc01c6019175c37dc1baeb5d39c91500c19a9fe'

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

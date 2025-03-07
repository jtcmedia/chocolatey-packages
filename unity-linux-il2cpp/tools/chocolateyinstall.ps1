$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/249fe0a196c2/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.0a6.exe'
$checksum64     = '9d47e3bc78485bfb94b4a2f5b83b5a1c662e0ea0b8d733db32841d01b5ebc665'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a01b55183a9/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.0a1.exe'
$checksum64     = '2ec395ababb5e0ecd19737bd7ffba47a36413c896ab8d2f0ae480a7e2531c3fc'

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

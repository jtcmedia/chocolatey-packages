$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d9cf669c6271/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.1f1.exe'
$checksum64     = '1fec3cc068b0c85741bf9aa9d646086e173fc5d4ee359589322b6148eaf13b5f'

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

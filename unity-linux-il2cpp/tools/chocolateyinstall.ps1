$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/40e81493c67d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.10f1.exe'
$checksum64     = 'fbe26bbeb21b6dd8a417295401bc9466f311bbfa94ba3682ad8d8c8f7d4603a5'

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

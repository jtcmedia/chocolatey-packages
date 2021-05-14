$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d91830b65d9b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.7f1.exe'
$checksum64     = 'ba359983b5a92ef8f937f05a8b882df4cdc9e52682fa756e6f701c1b52abe4c9'

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

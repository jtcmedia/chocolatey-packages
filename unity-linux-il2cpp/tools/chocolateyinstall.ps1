$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c7638eb16d91/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.3f1.exe'
$checksum64     = '4111c598421bbb72982ecfcb25719eb7a44eeda9adf632a4e59253c5ad242b8e'

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

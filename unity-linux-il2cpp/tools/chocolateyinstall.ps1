$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d20c9ac777da/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.6f1.exe'
$checksum64     = 'a0b9d6237e99577e0d425c25bb901aa233c4e9368d769fd18f11878d5494b105'

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

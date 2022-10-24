$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7c19dc9acfda/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.41f1.exe'
$checksum64     = '77693389b8691aa1b1851a948b5e2e90b10a2f9763195ebe452c073b82f450ae'

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

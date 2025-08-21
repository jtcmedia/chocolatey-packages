$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9c7b5e468860/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.56f1.exe'
$checksum64     = '758e061bea1787cd4ced95e4ff8d17c0d38f4a43613216266ab01448354a0428'

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

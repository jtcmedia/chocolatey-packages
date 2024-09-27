$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e2bacb8dee3a/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.21f1.exe'
$checksum64     = '5c31a97a03e561c57a44a71d899f7ca3b273c1a1cdf61a4f42b256d4646f4f97'

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

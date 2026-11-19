$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/40e81493c67d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.10f1.exe'
$checksum64     = 'eb38c2e3746cfafedc3311cbc387753cc8c40a26d8aba77e7f4c9b25a421c91e'

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

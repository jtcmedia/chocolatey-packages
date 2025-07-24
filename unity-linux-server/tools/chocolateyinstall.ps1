$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/418bd0acaa6b/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.1.13f1.exe'
$checksum64     = 'e9cc98ebcce7ca2161f4afba452a3d410c9faef8873c8781a408ab09fd96862b'

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

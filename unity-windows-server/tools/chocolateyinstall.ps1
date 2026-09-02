$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f7f8ed4d1e24/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.0f1.exe'
$checksum64     = '11255a0c7f30bf38c8a7908e1d3392e610c4da56722286829b001f709227b62e'

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

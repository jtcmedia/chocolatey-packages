$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d3d30d158480/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.10f1.exe'
$checksum64     = '2d3c5e131a6b4230a092d8da738e0a7d2c407f8d00417af2bb12932a0e8c017e'

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

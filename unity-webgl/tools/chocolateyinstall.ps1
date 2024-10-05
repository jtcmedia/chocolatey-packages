$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/001fa5a8e29a/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.22f1.exe'
$checksum64     = '30e1bf132020e45c77fbba526cc260b1d09fb20117a1c75a9038cfb91b29b2f6'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e2bacb8dee3a/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.21f1.exe'
$checksum64     = 'f1d56b1006efce6106034ac3abdfd28836267cad29f616c63af2440687b0c6a3'

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

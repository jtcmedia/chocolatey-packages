$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9a3bc604008a/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.35f1.exe'
$checksum64     = 'c5c842a51eef6d01355d2f4fd9084653fefb91526bbec322f2c87c1bf966ec35'

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

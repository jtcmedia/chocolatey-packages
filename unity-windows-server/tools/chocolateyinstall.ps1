$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b22767f04f04/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.7f1.exe'
$checksum64     = 'a3d6e77856f3b00fb45fc63f562557d1c6edb1e968a5f226a54f767565561b1c'

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

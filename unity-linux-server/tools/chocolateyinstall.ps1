$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa01dd6b76d5/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.11f1.exe'
$checksum64     = 'aa8c5f59c1b00852af6a440a343db980d874138493cf716bc4eaec10c259fc53'

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

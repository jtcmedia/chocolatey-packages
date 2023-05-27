$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a16dc32e0ff2/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.26f1.exe'
$checksum64     = '936a851fbdbde01024092819ba1b739e5d959f094a2fc38c58f717e2c0a3b3c3'

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

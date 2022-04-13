$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6eacc8284459/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.0f1.exe'
$checksum64     = '3f87ed6affb7e5de3b4050d513e642836b25500f571d84a6c8ef5c97466ec9df'

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

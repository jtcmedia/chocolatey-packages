$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3699cf869f9b/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.18f1.exe'
$checksum64     = '959511b8d9204bedbf3e1447b150ac242e3722f2752e4a28f34cf3ea92f60aff'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88c277b85d21/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.47f1.exe'
$checksum64     = 'af3689a1dcad47fd813cf04bdf0eb32184b89c0a833424e5386fd4a2d9b0cd44'

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

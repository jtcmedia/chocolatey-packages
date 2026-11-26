$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/34837772f4f8/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.11f1.exe'
$checksum64     = 'ae2d4147e16c3c5451f0245c9f07a34a00bab709f977d809f4a4acc07e527e0e'

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

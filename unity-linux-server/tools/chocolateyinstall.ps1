$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b22767f04f04/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.7f1.exe'
$checksum64     = 'cd51d7a6d4dc56b161d13ed1b68de3832c6010c1899ece4d2ffe2d9d658712b4'

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

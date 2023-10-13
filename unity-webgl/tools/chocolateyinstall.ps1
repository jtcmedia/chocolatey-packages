$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d00248457e15/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.11f1.exe'
$checksum64     = '1f0991099c4b4c2b40cc6bfd9e1e5e4597bede3c2e06552ee238c9eb2ef9cbd0'

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

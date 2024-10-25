$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/11fa355cd605/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.24f1.exe'
$checksum64     = '802659cb3fa4570ca0199240ee8a89372ce8bddee8b7b0a0bb4aa8e2b5fc2212'

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

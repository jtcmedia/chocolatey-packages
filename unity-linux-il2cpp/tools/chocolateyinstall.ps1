$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/61a549675243/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.0f1.exe'
$checksum64     = 'b986cd6a09e0083008b120fc3d0e3726c2f1004a209feb4a7af75915c01e0c1b'

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

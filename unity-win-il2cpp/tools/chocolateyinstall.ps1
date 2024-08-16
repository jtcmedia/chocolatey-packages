$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6a96561936c0/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.15f1.exe'
$checksum64     = 'e0ee5a1222636d4db72df507ac2249c31a568d0013d2afa3bce7d7db3616c4c6'

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

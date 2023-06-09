$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f18e0c1b5784/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.1f1.exe'
$checksum64     = 'feb6fab676950a86ca3e2ce2608fedc0d1327e0ee92b76915367a4d39d26bca9'

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

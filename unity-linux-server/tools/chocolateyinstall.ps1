$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95a4219250e5/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.36f1.exe'
$checksum64     = 'f5bb61d07c32d9f3c41d208e54e030afff56ca4e6778ae9b4d62593df4eccca8'

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

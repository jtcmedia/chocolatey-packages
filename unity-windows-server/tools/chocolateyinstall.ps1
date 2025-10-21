$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9992ac36c34/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.8f1.exe'
$checksum64     = '4e93c998ac2afe0c8f17e2aba85885d8db945d8d240e90d23566f09a7d4ae2db'

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

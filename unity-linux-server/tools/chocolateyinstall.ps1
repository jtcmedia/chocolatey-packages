$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ebc6493a86f/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.18f1.exe'
$checksum64     = 'afb5d585ec0fce7cace7e7b49d0db867e8db6c220208d5b80d09fd293a540c4c'

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

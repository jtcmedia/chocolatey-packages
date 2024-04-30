$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e25a174756c/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.20f1.exe'
$checksum64     = '451fb5ae9dc3a9285e7d4e177d384c520dc8ff157e139e1d62a6f11de4713da7'

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

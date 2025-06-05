$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eb7dd46c99ad/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.0b4.exe'
$checksum64     = '2370645bcc72acd459aa8125799ccf827f470615e4eb25e836bed94b37191157'

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

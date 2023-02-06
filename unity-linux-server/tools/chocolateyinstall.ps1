$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3129e69bc0c7/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.18f1.exe'
$checksum64     = '0d3a8c22fff0c67583023fb179139a74c074d4e05d02ae16638fdac60dc7a49b'

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

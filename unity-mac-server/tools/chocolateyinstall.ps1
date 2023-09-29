$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/831263a4172c/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.15f1.exe'
$checksum64     = '33ea5363cddc17adff5be48b06da1746a5adce59575bbcb90b1ccb2a9d87821a'

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

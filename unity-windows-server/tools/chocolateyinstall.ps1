$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/da0c3ee78ee0/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.1.12f1.exe'
$checksum64     = '22c8a7b9e4fb27925379c7539b6af8e76a02c61735d0cc9547a8312ffa955f0a'

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

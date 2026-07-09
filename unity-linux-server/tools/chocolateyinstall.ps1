$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf7ddae6c717/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.0b3.exe'
$checksum64     = 'cfb556b253974d932db80e5bceb2aaa584b5aa4bb8061507a29e2795442cac78'

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

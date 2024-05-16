$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d9cf669c6271/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.1f1.exe'
$checksum64     = '03bc9eb1484aca7cb2334c147ab26b50fc24ef820a66423b489dab8f8f2a72e9'

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

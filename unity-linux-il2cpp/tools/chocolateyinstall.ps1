$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/da0c3ee78ee0/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.12f1.exe'
$checksum64     = '2c59ef844a57c6d7faeccf54bf9b081c914a92f89a0787e8ddfea31b081a6150'

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

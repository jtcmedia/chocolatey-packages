$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f34db9734971/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.1.3f1.exe'
$checksum64     = 'be2e5dd6a1c72c947140b9281707a8836f5e56cdca3a4c4d97a0b3539a0f1fe2'

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

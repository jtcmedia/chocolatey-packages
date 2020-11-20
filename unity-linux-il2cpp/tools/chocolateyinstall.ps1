$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d81f64f5201d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.1.14f1.exe'
$checksum64     = '8991ee3ad279176dbbe57e6b5b1abe2e3937585e5b064e4337ad939b9bbb7480'

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

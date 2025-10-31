$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/74a0adb02c31/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.61f1.exe'
$checksum64     = 'b5e89fd8285303e3e69bc7ca3911a1bfccf61d18cd981dcf5febc390858769ab'

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

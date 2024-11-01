$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4859ab7b5a49/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.25f1.exe'
$checksum64     = '741aab09c3a397ef3f24fce07e04a94a51ea58bcb22b0a3cf892f6e77604e6a0'

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

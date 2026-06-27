$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bec83302551e/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.0b1.exe'
$checksum64     = '3cd9414cf5d6ba1692f5025a364ac6f4048b1f004517f792e2a09c2416966557'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e12ab2d6a089/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.14f1.exe'
$checksum64     = '20755c1317331a6b2e9addba45ddc57ef7baa996d1baa767259908d84e14a85a'

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

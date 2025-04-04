$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bc6fbc26ac6/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0a8.exe'
$checksum64     = '849959ea0ab323fec5261e3019bec89d86a803ed6e8819637abe3f87c87a5eb4'

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

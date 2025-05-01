$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7197418f847b/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.1.1f1.exe'
$checksum64     = '8e61c8aea8d192ac6930b1c5e4b08302295e33a440117f74f88b6731229e85ce'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/10bfa6201ced/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.6f1.exe'
$checksum64     = '629a94cc12655a1a8208607f51e122ea58d3b1b3630f6cc3ec1733e2ddae2ed8'

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

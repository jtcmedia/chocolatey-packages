$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4fe6e059c7ef/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.12f1.exe'
$checksum64     = '1f1e976bf16d89df9e7517f6e6c81854294d78e5f3e6d9f12713dc00e7282984'

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

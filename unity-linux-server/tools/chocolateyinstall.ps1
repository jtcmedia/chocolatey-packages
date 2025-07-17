$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/da0c3ee78ee0/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.1.12f1.exe'
$checksum64     = '0ec20628bdb9e590934777c2e85dc9ce7c26ebded20c5d4012205335a08e952b'

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

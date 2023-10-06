$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e5ad54273a6f/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.16f1.exe'
$checksum64     = 'bf8ceb02a01c0e1f8ceb2616ac292d379ed1fc510f864609801184fc469b3eb8'

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

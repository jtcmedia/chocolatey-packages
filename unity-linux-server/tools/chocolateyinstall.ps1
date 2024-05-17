$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c36be92430b9/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.2f1.exe'
$checksum64     = 'f80ba6ad6cd91d2143eb26b34655587f22a3c3bed0ef0865bdd57241713f6e45'

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

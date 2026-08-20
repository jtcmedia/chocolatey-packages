$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b57deb96f08d/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.9f1.exe'
$checksum64     = '267e2a6d419bcbfae1b316db0cc57c1898b485ca51993c38c0fb96f897c0328e'

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

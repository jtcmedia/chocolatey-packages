$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/017862109af0/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.7f1.exe'
$checksum64     = 'aae786a0e32a908922fc8fa439ecf1229c2380510b3e44680bfb9fcf805c5f30'

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

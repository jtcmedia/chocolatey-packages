$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55300504c302/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.1f1.exe'
$checksum64     = '99d87b7bf3817cf9770655eb5e277d4147a5a7243ed7fe0cbf7c91b36837a425'

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

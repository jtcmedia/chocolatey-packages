$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5360b7cd7953/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.64f1.exe'
$checksum64     = '1b62e15867add7d337c00df38fb774cc7d43d3c69b7c5f7e5fa0f93007174a5d'

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

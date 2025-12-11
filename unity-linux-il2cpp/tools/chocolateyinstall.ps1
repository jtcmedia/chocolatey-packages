$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5360b7cd7953/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.64f1.exe'
$checksum64     = 'd756d735e8caef914139f67c101ad2f2bf44efbf54b82f4bc4974a418349e64d'

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

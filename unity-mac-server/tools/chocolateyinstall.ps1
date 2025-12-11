$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5360b7cd7953/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.64f1.exe'
$checksum64     = '54e5dc97810370bca6f5d0805fd424e77e71fd60888123e9d848e409b7e8be7d'

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

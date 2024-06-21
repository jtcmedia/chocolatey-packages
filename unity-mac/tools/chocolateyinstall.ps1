$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7dd95c051e11/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.7f1.exe'
$checksum64     = 'bcb9ab065d87de83cbcf5e37cfcda2d0be2b19ceae14b8be4c6e36c00ce97e38'

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

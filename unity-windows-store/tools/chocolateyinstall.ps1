$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4ff56b3ea44c/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.0f1.exe'
$checksum64     = 'e03d7100b98c8f0fe002b37e177f82b9b87a7b131c5bdb8601836ad2f229be1d'

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

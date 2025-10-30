$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d3d30d158480/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.10f1.exe'
$checksum64     = 'f8818184b7dccfe7c3f9f8cca92d825329e6ac33e241e0f30ae77777f717a8c6'

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

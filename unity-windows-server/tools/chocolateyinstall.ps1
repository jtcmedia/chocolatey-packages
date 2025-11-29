$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9438f9b77a46/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.63f1.exe'
$checksum64     = 'cb6b35bb2b98fdce2a374629cdf42706b6415e36f3f90c221b032991dc5cf6c6'

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

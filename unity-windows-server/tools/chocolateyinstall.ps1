$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/40e81493c67d/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.10f1.exe'
$checksum64     = 'd60fef9474cc9cf8a089aa6b72d49d3ce96a8c2a7196d2fc1e6355eefd73d88c'

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

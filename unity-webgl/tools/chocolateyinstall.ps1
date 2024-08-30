$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95e1b8cf7a6b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.17f1.exe'
$checksum64     = 'a61ddb5c7181dd44bd0757ca73a1760f9de884a62cc1e8e970170e6afd2024fd'

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

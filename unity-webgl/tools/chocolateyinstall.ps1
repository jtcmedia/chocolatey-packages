$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/27c554a2199c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.27f1.exe'
$checksum64     = 'f8c4d3efd91277921cd75398407994e950080ed4ea016a955779557a5a2d02e9'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d46ecc5f5049/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.0b6.exe'
$checksum64     = '128f41e3d4cc07aa5c41d5ca474d18f1183f737d5c62e5e8db6ad0f8c590ded4'

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

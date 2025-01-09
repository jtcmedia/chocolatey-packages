$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/433b0a79340b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.33f1.exe'
$checksum64     = 'b8bb7c35fb758b224d5be9f4a4d8680c06b11f1c733e72e308c2e66183fcee5e'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/302b264628f9/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.19f1.exe'
$checksum64     = '7109c6ca0f849405ab129c1d3afda894a6f32fde991c70d4f06c4dd137543006'

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

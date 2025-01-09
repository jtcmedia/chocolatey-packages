$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/433b0a79340b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.33f1.exe'
$checksum64     = '28fea2c59c1e72cb2e35aa9b8fbacd1a0d8fc3a7116cfc8bd2d9d4b9c5e42d83'

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

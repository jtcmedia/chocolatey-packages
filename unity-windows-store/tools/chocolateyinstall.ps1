$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/26349cd2a5c8/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.75f1.exe'
$checksum64     = 'ac10a238e87897e8a180be3475a64c9a4f21e4db0f4643e2c31e139f150385b2'

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

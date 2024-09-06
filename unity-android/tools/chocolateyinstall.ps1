$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3699cf869f9b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.18f1.exe'
$checksum64     = 'b6c0cf9122158707e717c8b2f4a3b19b2845e5e5521edd405cac4bb6c0cf8294'

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

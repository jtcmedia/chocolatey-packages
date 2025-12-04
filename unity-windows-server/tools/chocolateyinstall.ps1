$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0707b6d1e918/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.15f1.exe'
$checksum64     = '69ff686b541fff0024dac01061c5e71dd2cf41caa8a40e5979cd0ce43417dae1'

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

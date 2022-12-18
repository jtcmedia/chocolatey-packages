$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/75bff06b76bf/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.43f1.exe'
$checksum64     = '03b585af598406ad84646ac6bf57e51d82f164b69df6c93866006216c0bbaf12'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

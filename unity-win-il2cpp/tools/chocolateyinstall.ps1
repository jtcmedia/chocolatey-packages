$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8331acaee5d3/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.7f1.exe'
$checksum64     = 'd63c23204f5174b73e56550fdc5944363c3517087e196fad4533548a8467450f'

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

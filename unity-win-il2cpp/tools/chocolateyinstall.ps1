$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a16dc32e0ff2/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.26f1.exe'
$checksum64     = '9af397b839111af693ac0f0277dddc84076641bb354da29cf8792d1083b2a9f1'

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

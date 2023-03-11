$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bcebec703747/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.10f1.exe'
$checksum64     = '20014692b5d567ff160609ca0b8ecdd1b45d05b37aa73f5b0816fc8fecd22e86'

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

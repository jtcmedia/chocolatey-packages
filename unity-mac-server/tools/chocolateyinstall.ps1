$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ff7e140968b4/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.14f1.exe'
$checksum64     = 'e167ec7b238b2026148f4dcbd126a46fa19b5d5a61db7bdac448f3e1194c0dd6'

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

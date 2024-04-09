$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/396a1c6fe404/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.17f1.exe'
$checksum64     = '48e4e5184dd6e209cdc48c5c61fdf54bc401aa657104563af40e53f88619c40b'

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

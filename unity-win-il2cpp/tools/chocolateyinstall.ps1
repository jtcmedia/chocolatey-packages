$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/418bd0acaa6b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.1.13f1.exe'
$checksum64     = '2f37ad969f365d57094db2dfc8ccb2b7bfab47f1a88da9e8eb3f8fdd0f91b316'

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

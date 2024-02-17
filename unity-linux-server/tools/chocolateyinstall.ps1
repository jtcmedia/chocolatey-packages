$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/316c1fd686f6/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.10f1.exe'
$checksum64     = '7b367f5d293a6f59d4abfd84b18f48740eebfa5ea217916aaae938d0baeb8c62'

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

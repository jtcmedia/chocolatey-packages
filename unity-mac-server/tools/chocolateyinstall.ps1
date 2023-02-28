$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/996aee41dc57/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.8f1.exe'
$checksum64     = '96d6b46ac9bf1d3c864452aee9582f16871a14b75f50565d4a679ebe53e7c086'

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

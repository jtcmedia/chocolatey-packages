$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0f988161febf/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.41f1.exe'
$checksum64     = '84f0f5d8098d7a91aa3823cfe68da6a25bfa32e8a241729e035aed105b48e132'

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

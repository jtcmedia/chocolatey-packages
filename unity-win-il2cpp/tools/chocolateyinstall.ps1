$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d535843d11e1/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.16f1.exe'
$checksum64     = 'b246021cc47d5081ff211e658d2d6d485d1ac8e91b014086cf2f9e8806f8138d'

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

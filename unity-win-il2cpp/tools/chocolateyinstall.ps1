$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb3b7b32f191/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.39f1.exe'
$checksum64     = 'b30fa60b01eb974e706d598831271a521d760b7e84e4df81d8c990d4e7042bc9'

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

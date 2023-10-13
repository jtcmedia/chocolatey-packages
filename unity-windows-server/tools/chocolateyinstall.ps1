$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d00248457e15/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.11f1.exe'
$checksum64     = '62910ec5f43446955ba3f5f487458cf47f439e16ea0734846bde7514aaf79f50'

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

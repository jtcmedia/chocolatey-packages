$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/157b46ce122a/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.35f1.exe'
$checksum64     = 'c90c42a47e917e7b63bea89b3887308e8c218cabab4e2585da4f5bdc94210022'

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

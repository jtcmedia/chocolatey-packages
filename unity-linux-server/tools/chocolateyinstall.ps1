$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/21747dafc6ee/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.3f1.exe'
$checksum64     = 'a4e939bc6aff9e2ed9dafcf1e2c34f26dad39bfb40ea93696d161a04b3ba42d8'

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

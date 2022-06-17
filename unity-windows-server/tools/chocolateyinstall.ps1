$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feea5ec8f162/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.5f1.exe'
$checksum64     = '013c4c96cfd5e12841f8c61d8107d8d9b6447f6c661d1e56e1c8a4f5b8d8bcf8'

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

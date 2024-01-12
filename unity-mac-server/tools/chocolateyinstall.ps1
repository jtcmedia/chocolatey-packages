$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/381b4941466e/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.5f1.exe'
$checksum64     = '7b3467cc2f208b134d4daaaeb0fbe9b5cb12e0247bb8039e98d534be858a1f34'

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

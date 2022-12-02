$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e8e88683f834/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.3.15f1.exe'
$checksum64     = '0353a14140db2b5fdd537b2b2e7f28607314abaeed99968b6b14728ffeb48d56'

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

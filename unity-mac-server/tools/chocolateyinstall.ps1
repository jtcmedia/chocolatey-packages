$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6a1e21c61430/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.11f1.exe'
$checksum64     = 'ee1e7dc9a05a9cfa8306ecdf214b99450ac78030048b95c5f1ebb4f3145712b9'

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

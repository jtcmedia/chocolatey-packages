$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ebc6493a86f/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.18f1.exe'
$checksum64     = '71ecb06565ef7bb3e9faf4d8f95b583c1f3b5f905dc10d24af18395dba4008d3'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9636b062134a/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.23f1.exe'
$checksum64     = '39fb92cf0a64fe9fd8dfbdb9e2285f286bfd2f462dfd5ce5094646db1996d9b4'

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

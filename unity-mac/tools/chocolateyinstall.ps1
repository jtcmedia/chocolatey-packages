$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/602ecdbb2fb0/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.19f1.exe'
$checksum64     = 'db2c23d6c772548850070e462f375fb3363d8a4ba8d4b55969c10adc1533559d'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ee5a2aa03ab2/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.33f1.exe'
$checksum64     = '4e9f7dba42bf4ba31629f22c150b6c45816755dfbbc4e56a15d0b5ce36f690b7'

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

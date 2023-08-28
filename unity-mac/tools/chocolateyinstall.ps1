$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b5eafc012955/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.8f1.exe'
$checksum64     = 'fa2dbfecff32dede7237a331f4da360df3b8bd460487fbac5f75dc7ab7179e9b'

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

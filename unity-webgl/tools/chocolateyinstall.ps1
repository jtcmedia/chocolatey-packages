$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0c9c2e1f4bef/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.9f1.exe'
$checksum64     = 'd86098d751b11e6c20c873ee3f0a18ed3b98b8369173e1d1aca117f75529b1d3'

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

$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ffeab063bb93/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.1.13f1.exe'
$checksum64     = '11ab1221bd4297b434c845ecbdd7ae57cfc858172447bed9557e8da4ce87b02c'

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

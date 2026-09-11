$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e7b9b5b6244/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.3.24f1.exe'
$checksum64     = '4e31ce08a25491db84f00301eddcc440f5de09485a18d80b5a919de0bf27fc30'

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

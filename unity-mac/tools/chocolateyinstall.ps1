$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9427c1534183/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.2f1.exe'
$checksum64     = 'fd004012034739823b995b9090f6834c813d8ccbc4c7b017eba585c2ea0ffed6'

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

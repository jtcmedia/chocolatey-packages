$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/001fa5a8e29a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.22f1.exe'
$checksum64     = '01aae21e38e7f42d3c432ce24cf0cc729ef74075f21da61329dce5f169e10eee'

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

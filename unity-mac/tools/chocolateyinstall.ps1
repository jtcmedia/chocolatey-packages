$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7f159b6136da/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.3.44f1.exe'
$checksum64     = '043e12e71dc9eb34d8a6daa52c3d044cdb5b29b73a0f6ebef20d3f80d6eddaa4'

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

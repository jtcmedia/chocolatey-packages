$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b22767f04f04/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.7f1.exe'
$checksum64     = '8dc546375cde1262a6b536d2c2c7b998c2bcd80df8beb82025a25072cd93db2f'

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

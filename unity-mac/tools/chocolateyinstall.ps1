$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b5238eaafb35/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.0b5.exe'
$checksum64     = 'adf486d7f7243f459e1d3a860cd9794c72ab72025df4e626d070f1bd62bdea1f'

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

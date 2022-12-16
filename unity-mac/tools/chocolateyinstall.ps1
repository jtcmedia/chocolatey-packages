$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4016570cf34f/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.16f1.exe'
$checksum64     = '632f1c5e9e691e78bbbed175d0d56652c9ba3ebf099a81e3219304b7d970f9b2'

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

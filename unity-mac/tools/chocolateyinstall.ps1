$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a091f9adba4/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.18f1.exe'
$checksum64     = '24efaf3310808fc7ea87ae824371d7462d896ce277c14d1f0d88d90750bcb968'

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

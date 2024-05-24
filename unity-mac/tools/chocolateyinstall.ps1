$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/70558241b701/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.30f1.exe'
$checksum64     = '90040f1b989c000c092d27360ed518c3418b098fae197b48ad3217dbc6ac3287'

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

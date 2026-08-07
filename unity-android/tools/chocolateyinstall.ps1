$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53d4abb44f07/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.0b7.exe'
$checksum64     = '6f0270c2f5b86dfa82f80900220da8215b38ffb5993d57e2f752117f97817958'

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

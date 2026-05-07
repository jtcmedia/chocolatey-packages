$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c8c45dd2de2f/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.0b7.exe'
$checksum64     = '193094613bf203d9754df3240b4214d6ac7efba82522a75185474088a1e3d408'

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

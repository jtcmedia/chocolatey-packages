$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5d30cf096e79/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-2017.1.1f1.exe'
$checksum64     = '85faf34b110d34e12ac4dc2394fb86effdce72f03ba41fe09b4c765d836b563e'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

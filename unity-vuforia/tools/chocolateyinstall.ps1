$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/ae1180820377/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.2.8f1.exe'
$checksum64     = 'f5029a1fecbc0b6e8fac56886134633a166fe6ba8aa4abf506e28da0579ddbcc'

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

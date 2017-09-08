$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5d30cf096e79/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2017.1.1f1.exe'
$checksum64     = 'eed292275f9c06020a7aa12cfde11e716a1435f94252ddada9de901cac2cfc83'

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

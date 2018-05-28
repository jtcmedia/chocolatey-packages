$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/a46d718d282d/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.1.2f1.exe'
$checksum64     = '835b2f368bef389062e726a1482db979dd4bd58f132b19c18c4ec8a635d8a860'

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

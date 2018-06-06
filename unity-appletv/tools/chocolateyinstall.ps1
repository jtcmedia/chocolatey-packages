$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/a53ad04f7c7f/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.1.3f1.exe'
$checksum64     = '6e41d10a3303769eb2f2a1fb4ee96d5b728823997fee4330e0c2d01db2a394f9'

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

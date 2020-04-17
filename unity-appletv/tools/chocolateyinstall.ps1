$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5968d7f82152/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.3.10f1.exe'
$checksum64     = 'fa28e9c3062362ff128cbf32ecf12f8f94f4e45cbdc6c96481491a116469b244'

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

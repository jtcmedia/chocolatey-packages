$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a9968d9f99c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.2.1f1.exe'
$checksum64     = '8ba640e40d5cc67014b5624f101bf525cff3892b57ada8b78bd0da402fa29e67'

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

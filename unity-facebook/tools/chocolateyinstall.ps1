$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a220877bc173/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.3.6f1.exe'
$checksum64     = '3f9d91f9197304c44bca4da84afb072ede96f2fad6d30e8ad3aff13c4ad7d346'

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

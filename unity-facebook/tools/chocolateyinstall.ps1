$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/732dbf75922d/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.1.5f1.exe'
$checksum64     = 'f21415bfe859886a4416fda83f88ea3cd19e6ad2da2a5e897860307e92fd8af4'

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

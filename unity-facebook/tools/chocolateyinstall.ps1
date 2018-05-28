$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/a46d718d282d/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.1.2f1.exe'
$checksum64     = '4364a98a39330844f4d686bacae4ac27bdd3c9a8e543c9578868942158fe7a04'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/a53ad04f7c7f/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.1.3f1.exe'
$checksum64     = 'd2b6d21e1e41426b21bd06a259069dead4125d017544adbf34aa614e8a5bba49'

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

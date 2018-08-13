$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1431a7d2ced7/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.2.3f1.exe'
$checksum64     = '5e69422b65c40220744121d2e80a2da45b4ddb0f47c94093294c36d7c22a512c'

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

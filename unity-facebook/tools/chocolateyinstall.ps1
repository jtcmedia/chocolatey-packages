$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/65e0713a5949/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.2.15f1.exe'
$checksum64     = 'ee69fa3d89072139a40f6a0661e40b99b5ca7a49598653bb9f8ec9eee065e43a'

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

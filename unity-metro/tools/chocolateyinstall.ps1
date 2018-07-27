$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a9968d9f99c/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.2.1f1.exe'
$checksum64     = 'd804d24c5601da0d02a4b986f6cf7a4f7261cbc774f791b9bbd6c12f1118f2ec'

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

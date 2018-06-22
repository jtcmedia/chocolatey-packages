$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/57cc34175ccf/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-2018.1.6f1.exe'
$checksum64     = 'e49895cb16466697f1ca4b9abb65864bf90fb9f7ef250e71f299c01e8e35d524'

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

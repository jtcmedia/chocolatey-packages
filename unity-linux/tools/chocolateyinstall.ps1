$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/65e0713a5949/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.15f1.exe'
$checksum64     = 'f0252c0c5870737b5007537bd2aed727c95a86fd6ebca87f00e77fab1f7b1122'

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

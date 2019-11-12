$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b1a7e1fb4fa5/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.2.12f1.exe'
$checksum64     = 'dc97397c2a623174ed0428a676fddaaa76e5451fcee93695f8ba23dcd4c00042'

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

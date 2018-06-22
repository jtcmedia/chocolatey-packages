$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/57cc34175ccf/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.1.6f1.exe'
$checksum64     = '862fb7d9b2c7e3f7f9b3c49f534b2e2383d9511b943f607aa9916f41348e7103'

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

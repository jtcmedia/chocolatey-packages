$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fb119bb0b476/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.0f1.exe'
$checksum64     = '4fa572ae4e6f297b5c012ebc56873c94c6de19a21083ba6bc2734ba6bdb5f148'

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

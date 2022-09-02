$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/42973686a05c/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.15f1.exe'
$checksum64     = '5d0b08edac5ad74fd4ac12df681a8ad4d054d3be13dcbe551e7847400ffd5992'

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

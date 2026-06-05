$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf0352b38e81/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.3.17f1.exe'
$checksum64     = '943f55f447ae5ed4a7302036d0fa1a0a23111420621def67e394f3aa5eabb14f'

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

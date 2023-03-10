$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/18bc01a066b4/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.46f1.exe'
$checksum64     = '11b07cbd7e76fa171bff3c4c56f8c84c6716049212fb2e2d573f75af9772ffc0'

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

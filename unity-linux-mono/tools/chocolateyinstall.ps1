$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1120fcb54228/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.52f1.exe'
$checksum64     = 'bf8f06abcad0ce9e935080c756679213e004a4bb8394a8b835e2f958fdc732eb'

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

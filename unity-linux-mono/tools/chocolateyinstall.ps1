$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2b639e48c919/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.18f1.exe'
$checksum64     = '7d3f92863b1527d7730a204ae055df09ebc95289385a65d75fb76d375c7fe93f'

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

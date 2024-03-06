$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/19eeb3b320af/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.12f1.exe'
$checksum64     = '60ee228fb96373992ee40053ecb9f2c8df282552129749cf49c35dcc4d7cbdd1'

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

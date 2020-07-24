$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/81610f64359c/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.4.5f1.exe'
$checksum64     = '0b074b070a18085e5f37fb56d2c72478fb757bdf565646685c9476d0d46fc48c'

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

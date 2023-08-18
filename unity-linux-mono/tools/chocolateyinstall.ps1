$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f3f94c8cdc49/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.9f1.exe'
$checksum64     = '17eedce42717ee1b601af56b675795a707d38b0c5be4c96c6a62d8856fd666f4'

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

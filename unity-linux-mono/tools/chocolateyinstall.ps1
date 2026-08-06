$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d46ecc5f5049/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.0b6.exe'
$checksum64     = 'e20091dd5c56b3709b3f5b03859a5fbc6388f30192241b9b81cd607864fd56f0'

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

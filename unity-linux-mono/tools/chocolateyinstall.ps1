$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3bd4f66ad299/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.10f1.exe'
$checksum64     = 'c7603da745569cc39959dcc5e2728c04f6026d98412eaf584beb9c12e2c0065b'

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

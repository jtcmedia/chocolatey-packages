$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1b156197d683/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.21f1.exe'
$checksum64     = 'd28809f0802b449f63cbccfd110095bd9337770bc723676a29b48e2a013f662c'

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

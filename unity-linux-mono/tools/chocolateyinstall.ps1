$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8331acaee5d3/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.2.7f1.exe'
$checksum64     = '31ae9b4fdb0664b8e81813e89c1ac3f25d6eb5db1c4df843258386ed416c6132'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d81f64f5201d/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.1.14f1.exe'
$checksum64     = 'b9d5c8c39f9a77ee746951f2d6e2cc64ce7feabd0aecd5661c81b6587cc57512'

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

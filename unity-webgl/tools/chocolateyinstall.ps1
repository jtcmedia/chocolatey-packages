$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5e2b1e92c7f8/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.2.2f1.exe'
$checksum64     = '451a4a7f8de5728caa8206e1033da64cf5e2de0a838ea897da0b7fb61230f59d'

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

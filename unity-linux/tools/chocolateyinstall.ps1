$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5e24f28bfbc0/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.1.13f1.exe'
$checksum64     = 'bc77aba021c53d66afc150aca142e0dd2468f7960079a554fd81ead50664b0e6'

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

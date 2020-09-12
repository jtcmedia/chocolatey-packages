$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e025938fdedc/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.1.5f1.exe'
$checksum64     = 'cfd3689b57cc0ac1846e34d5c26cd98fdfb2b8965c7435d414a4e3be3fc0638e'

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

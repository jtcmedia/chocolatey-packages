$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/feea5ec8f162/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.5f1.exe'
$checksum64     = '572abed3fc8222bcb783657c5fe65eb4e66c583369cce0298d18363a6638bcc8'

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

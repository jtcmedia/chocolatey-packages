$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/97d0ae02d19d/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.1.15f1.exe'
$checksum64     = 'f63c211bfbe14062c13e8fa302c2de3bb47612a9a7716c08470dc17c88326b81'

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

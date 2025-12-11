$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5360b7cd7953/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.64f1.exe'
$checksum64     = '3f5693b53305d7df675136b69752588e0ebcef51c29c2a8c5be512563cd7f5bc'

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

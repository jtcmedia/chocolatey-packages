$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7f45223012db/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.16f1.exe'
$checksum64     = '249ffc20c7c86dd63a2e4f3d73c447766448a43e1ca99d272768ba3179ba484d'

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

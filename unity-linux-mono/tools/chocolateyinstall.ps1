$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/43d04cd1df69/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.5f1.exe'
$checksum64     = '73a7a58599a6098d44394516bd40158bb083e9a47fa57303055e31be8488303d'

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

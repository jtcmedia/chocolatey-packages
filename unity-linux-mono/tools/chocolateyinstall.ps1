$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8e9b8558c41a/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.46f1.exe'
$checksum64     = '91964027824cc9fda8efea40a203cff127064316108c96b66c0bdb6dfe60674e'

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

$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d20c9ac777da/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.6f1.exe'
$checksum64     = 'fc7ecc72ae87f68325b7a963c4edd31f70e913051a2248a69935bad18df1df1d'

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

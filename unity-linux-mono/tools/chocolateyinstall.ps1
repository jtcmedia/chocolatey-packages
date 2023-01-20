$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7f159b6136da/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.44f1.exe'
$checksum64     = '5819cb74607ac8063b66e6a98a1d3baf6aec46b88dc57648ae3c5f1f198de40a'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f3c4928e5742/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.1.7f1.exe'
$checksum64     = '15afb4ad381952a9ce893d57622cb59f619142a4ae5fbc3c3b21d7fc5e8cfd9b'

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

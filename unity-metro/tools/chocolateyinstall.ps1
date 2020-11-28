$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/97d0ae02d19d/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2020.1.15f1.exe'
$checksum64     = 'facaa7e7395ea40aa09ec5cda9bba726a5caa98f353cb474a3b89bd39c856b67'

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

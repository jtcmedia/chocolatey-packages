$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9e14d22a41bb/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.3.7f1.exe'
$checksum64     = '6fd5fb1f9627a28537850d8e9326cd4b0f26c29fadb6490747097c7e110774b6'

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

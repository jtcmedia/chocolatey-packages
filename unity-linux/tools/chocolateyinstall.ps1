$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/947e1ea5aa8d/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.3.9f1.exe'
$checksum64     = '6af0b6b75aa84547281f195a9f567741c0e2976d1ff1c56ca55068fac3aa3670'

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

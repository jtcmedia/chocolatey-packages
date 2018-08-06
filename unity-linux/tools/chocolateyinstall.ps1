$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/c18cef34cbcd/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.2f1.exe'
$checksum64     = '93a81e170c9882040e815b5846366d1ed60aaf50b2e840a8d00eed38bb7859c7'

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

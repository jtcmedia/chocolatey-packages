$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/76b3e37670a4/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.3.5f1.exe'
$checksum64     = '75054d1437356e6b9a8e9f63a35b090c8318487b5c3777c6c43100a3d0364334'

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

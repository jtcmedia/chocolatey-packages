$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/393bae82dbb8/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.3.3f1.exe'
$checksum64     = '91923831da75b8b0885696a964907c4feb02cdc098f50cc172494f4652954b57'

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

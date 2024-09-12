$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8e9b8558c41a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.46f1.exe'
$checksum64     = '8666dee5bc78986f1cbf52dbccd1fdda9887a6320a6c3719c8243dabf0a1c3ab'

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

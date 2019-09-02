$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8e55c27a4621/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.2.3f1.exe'
$checksum64     = 'c36052155ef979eb65ee8c111ddc5035c2184d654e1fa1d06127bdad8d0277aa'

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

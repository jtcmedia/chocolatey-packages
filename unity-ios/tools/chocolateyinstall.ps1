$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8e55c27a4621/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.3f1.exe'
$checksum64     = '3cb04a822b3c9b9654b0a96456bf21cb6a0cc9b765d6ca68f97d54e4b2fcb33e'

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

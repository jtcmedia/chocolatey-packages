$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/629111e352bc/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.19f1.exe'
$checksum64     = '778aa7f53d37d930a2b079cba3d02ed810246ac3ae61f5e79e91bd2e1ad548b2'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/629111e352bc/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.19f1.exe'
$checksum64     = 'f2fc56aa1ea34fea500df1d9d4ff012d430f38f5800c398ad6250ce50021ea00'

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

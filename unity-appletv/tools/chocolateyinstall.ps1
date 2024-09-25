$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/94d194ca434d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.44f1.exe'
$checksum64     = 'f8602f4d7377e22e7bff397d27686d0431a02f4bdefdbbc60895b764b726327b'

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

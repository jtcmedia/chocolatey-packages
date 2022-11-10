$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6b6e9fc2adda/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.22f1.exe'
$checksum64     = '137659a99ddd3f7c77d45265ca70e0bc0f56b080cd0ad533e9816af3fab7e861'

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

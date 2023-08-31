$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fbf46ad88f3d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.11f1.exe'
$checksum64     = '3fd87f646a60ace268480d738eab803f14417f5d994f02cef65c64be7506a597'

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

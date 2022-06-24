$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e49a51cf6290/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.6f1.exe'
$checksum64     = '4c5ec621c2f60645afda5e92d82ee9dc445c3e8a5057c65a565c0ff74102c099'

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

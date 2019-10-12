$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ebce4d76e6e8/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.2.9f1.exe'
$checksum64     = '32d1c939d8edb70376b34041cff68cc13ec29b774214815db239c8e02f2d8c26'

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

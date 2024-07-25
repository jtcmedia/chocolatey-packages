$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4e1b0f82c39a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.39f1.exe'
$checksum64     = '9a75b345a8dbffcd7136b5aa473a8bcdfcf0f52a0a7efffbdf9b615aff342358'

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

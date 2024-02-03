$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a3bb09f8c8c4/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.8f1.exe'
$checksum64     = '265161f375857121cef8e599b257ecb609ddc990d5d4519a1b3d082606829fcf'

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

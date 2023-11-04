$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3b9dae9532f5/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.32f1.exe'
$checksum64     = '123de4e204edb2ac895ca193b8263a790af8810aa6fa1919e2893e043f8a3502'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c5d806317f84/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.20f1.exe'
$checksum64     = 'f0ce3086ef71a44e3c1baf3faf5975d22eaf39859d119dbc4c55b0239fd3554e'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/019e31cfdb15/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.4.37f1.exe'
$checksum64     = 'd48ba89d485caba704d70457c863401bace40e639cbb32123aa54b7619e2c9ba'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-tizen'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a2913c821e27/TargetSupportInstaller/UnitySetup-Tizen-Support-for-Editor-5.6.2f1.exe'
$checksum64     = '263f06866a14ab64fa451616d8065ad779d756e00973b20453491449d8a10497'

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

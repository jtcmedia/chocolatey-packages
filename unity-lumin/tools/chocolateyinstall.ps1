$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f076387c01d/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.26f1.exe'
$checksum64     = 'c25510e61894887c78a3d094671c9e83389cbea9f6a61b3183dc31f9663ac14e'

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

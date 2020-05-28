$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/59ff3e03856d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.3.15f1.exe'
$checksum64     = '7af08011aa13500f918cd2a949901f1327619fb511c055833413c88e4d3f7683'

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

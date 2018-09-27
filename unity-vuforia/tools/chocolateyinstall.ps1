$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/674aa5a67ed5/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.2.10f1.exe'
$checksum64     = 'b3b820e4aa404f7ca136d966360fe8cfc1da9dc1901f128af19be56fd67cde62'

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

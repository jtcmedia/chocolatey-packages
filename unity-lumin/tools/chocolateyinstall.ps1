$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/d691e07d38ef/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.3.5f1.exe'
$checksum64     = '540d56ce9f73945b9a50f667207017a26023f0b0b3163bf6d3f6815e5eb776c3'

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

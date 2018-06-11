$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a308f4ebef1/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.1.4f1.exe'
$checksum64     = '03342a30c5bcf1805dd216864d7189fece3d99f02a3286dfa72f8259bf75d8a2'

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

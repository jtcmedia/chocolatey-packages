$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/94bf3f9e6b5e/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2017.2.1f1.exe'
$checksum64     = 'fd6d395c9f19e4d2a301540c5cc8b89cb3612799660f3e7054f8457f828c074b'

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

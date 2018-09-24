$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/2207421190e9/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.2.9f1.exe'
$checksum64     = 'f107c756af6a482b18232d9d987e4147e9a9268550832f32b903482c56cdcf73'

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

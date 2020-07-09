$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/f880dceab6fe/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.4.3f1.exe'
$checksum64     = 'e63910fb3b0ad618f47a51e66d6d7c9404afb4841a6cbda68a9da38874b256e1'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b9898e2d04a4/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.2.16f1.exe'
$checksum64     = '8226ebc38931298cfcc6bef64bbef763b9f0fdec804e410c05a4e5c3ecccd6a0'

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

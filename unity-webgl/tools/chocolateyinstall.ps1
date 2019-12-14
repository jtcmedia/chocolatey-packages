$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b9898e2d04a4/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.16f1.exe'
$checksum64     = 'c6138287336fd54929819aba4578dc277b25a5be578369403197dab81a12e388'

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

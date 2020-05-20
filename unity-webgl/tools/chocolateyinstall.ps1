$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/2b330bf6d2d8/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.3.14f1.exe'
$checksum64     = 'f110414339f406af6f87b876da262562fd97bc0496533092d71cf77d925f008e'

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

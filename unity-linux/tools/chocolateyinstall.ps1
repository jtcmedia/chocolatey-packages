$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/732dbf75922d/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.1.5f1.exe'
$checksum64     = '2d701e4ae4be96c3e21fd2ee0c8a33f8ac2eb9d141909dabbe68909fae35a794'

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

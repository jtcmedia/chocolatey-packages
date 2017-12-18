$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/94bf3f9e6b5e/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2017.2.1f1.exe'
$checksum64     = '3ddea869566685336d0d8efa4e5a9c952095ae87f20c4cf3fcbc58eed3454f3c'

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

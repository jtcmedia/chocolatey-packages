$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1f1dac67805b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.4.4f1.exe'
$checksum64     = 'acb82fc710e8e624bf975e4a5277f762e42acc50d0eec5a23d9daa9a902af7e7'

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

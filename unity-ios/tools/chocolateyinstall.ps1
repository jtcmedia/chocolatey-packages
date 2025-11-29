$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9438f9b77a46/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.63f1.exe'
$checksum64     = 'f2393cf43cbfa5c3d7bbd9ccb6d6502adac70141ce5dfc17ec048c6c0c7cf5f2'

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

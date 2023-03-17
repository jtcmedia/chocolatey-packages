$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1b156197d683/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.21f1.exe'
$checksum64     = 'f9a3980fad551088e4851f65f9323dc39f05d92c19af2d8ed0986deb0b05d70e'

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

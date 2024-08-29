$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c3ae09b9f03c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.44f1.exe'
$checksum64     = 'b4f3c6bf0d16063058e9cf2173dccf9e44f9623da8a0fc2da0fa7e87a8d7d441'

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

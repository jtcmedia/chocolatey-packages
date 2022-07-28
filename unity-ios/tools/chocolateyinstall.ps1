$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/09bebd6e9324/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.11f1.exe'
$checksum64     = '2dbbe2884266943dc5009385a96d03a5731cd7189db0ec22f4dd1056b75cd15b'

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

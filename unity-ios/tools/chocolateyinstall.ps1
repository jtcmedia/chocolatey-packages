$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/feb9a7235030/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.42f1.exe'
$checksum64     = 'da703ff6da0fc32016e7320c9e437b837ab3f17261225faeafc520c6fd1cd508'

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

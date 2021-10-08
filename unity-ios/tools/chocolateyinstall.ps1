$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6667702a1e7c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.24f1.exe'
$checksum64     = '000b52d08ddd72339d025b264d4e15007f8c3443d33e20dfa1ae5f3b554ee8d7'

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

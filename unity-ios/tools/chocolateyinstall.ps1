$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/17028576122a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.5f1.exe'
$checksum64     = 'ac63a317f328bbcb4703ad2761e5e6885c623f2f119f785db2237dce81e0c6fe'

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

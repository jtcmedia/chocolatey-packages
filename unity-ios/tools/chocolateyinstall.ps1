$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fb93bc360d3a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.46f1.exe'
$checksum64     = '02cbaf4cccc5996f5c65899fdb7a5d7bf23d0e86b724f7edb1295a78ee01c783'

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

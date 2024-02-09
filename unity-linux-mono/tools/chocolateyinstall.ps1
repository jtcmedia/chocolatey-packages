$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/157b46ce122a/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.35f1.exe'
$checksum64     = '7160da87806bee6cc5dc4a12708c3655597ebecfdeb156e4f75ddfbfc5b0b062'

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

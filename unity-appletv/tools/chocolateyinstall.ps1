$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d16e074b49fd/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.5f1.exe'
$checksum64     = 'c38bffbcd33e99035025aca9e5958dfe066a9b02f133709fad21c3c19c459b81'

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

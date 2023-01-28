$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8216e0211249/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.2.4f1.exe'
$checksum64     = '5a93a04185df8a169e27dd942575d86ad5d7974450332eb955eaa46b0706a285'

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

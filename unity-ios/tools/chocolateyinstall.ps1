$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5f5de2657605/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.13f1.exe'
$checksum64     = '6a4ad63100d463949ff624570559c2fea6ae058e93eea389bec7d55a9e12bfa2'

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

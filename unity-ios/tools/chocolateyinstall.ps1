$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7c19dc9acfda/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.41f1.exe'
$checksum64     = '582f97f5b28839e8fbbb040e00de5c997af2f87e3431070232aa79ec5f409606'

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

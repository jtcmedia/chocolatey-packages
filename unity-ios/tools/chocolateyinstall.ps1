$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf0352b38e81/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.3.17f1.exe'
$checksum64     = '1d6cc224f1df10187312123ea479498638760dc34b93483b8aaad609fff22fbf'

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

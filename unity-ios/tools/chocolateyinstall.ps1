$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/88b47c5e7076/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.0f1.exe'
$checksum64     = '99cf39626504be901fae4a6ba46fca93e9fbea986336ac90d7bdeba2d5a1b1e4'

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

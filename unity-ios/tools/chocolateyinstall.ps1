$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ab112815d860/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.2f1.exe'
$checksum64     = 'b04adba744593575a2d03c29977dfe169f364a034d3cec58f86f8ea3fa2ac6d6'

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

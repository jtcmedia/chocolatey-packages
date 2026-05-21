$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a56f230f6470/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.3.16f1.exe'
$checksum64     = 'c0751ef82863f6e2863aee467f033acd99fae0a7b60c52215c7bb0792703f815'

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

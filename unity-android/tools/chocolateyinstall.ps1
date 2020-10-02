$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/064ffcdb64ad/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.1.7f1.exe'
$checksum64     = '30b5fb4fb30b38d6ec2bd78bf0add8e598f7a129e59079d6c680d6791c70039a'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7a790e367ab3/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.9f1.exe'
$checksum64     = '05590f686bcc2f9e91aefe3c95d91d735098f6e29710e6267e6303f106453dd7'

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

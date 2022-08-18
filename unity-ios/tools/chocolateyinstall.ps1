$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8f5fde82e2dc/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.38f1.exe'
$checksum64     = '096353653bbbbe4b7e11bd83e7daf755f43e3ce4e77ea8628fe2d83e1ed8114c'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/064ffcdb64ad/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.7f1.exe'
$checksum64     = '626c5fcfaa8ae8347bc80fe8dcb44ebc27ac12fa0d142dcfab59be76a5c9e903'

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

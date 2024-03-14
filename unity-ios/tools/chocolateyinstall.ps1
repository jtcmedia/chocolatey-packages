$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/eeca29774eb5/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.14f1.exe'
$checksum64     = '7d0d5aef081d9ad4d3d74b25ec8406330e95b4856785b59c974a3f3dbc669169'

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

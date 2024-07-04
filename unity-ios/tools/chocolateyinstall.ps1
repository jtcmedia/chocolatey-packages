$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/95a4219250e5/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.36f1.exe'
$checksum64     = '1ac84272557ad6f4bab94ab25c0e9af6214db9473c2fc1c82aa55e1f22acb4cb'

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

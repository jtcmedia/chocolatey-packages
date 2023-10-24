$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b84c4024cd38/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.17f1.exe'
$checksum64     = 'fd06a855de6101baf015213e346ac35009aadb596a00c8ca6629c650c96e3e38'

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

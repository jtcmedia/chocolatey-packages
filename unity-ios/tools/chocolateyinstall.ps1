$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/55b56f0a86e3/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.12f1.exe'
$checksum64     = '96d31735eaaf44845a6bda15e51fee81f8ca931c61a84d6823c6f2b2683cc4d9'

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

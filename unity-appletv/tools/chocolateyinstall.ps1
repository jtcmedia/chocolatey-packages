$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2212ba80b59e/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.6.0b4.exe'
$checksum64     = '5121d9481b903c415d30fce215fda9be0ae362db25d1bbf40416ffe485bb69d3'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/03270eb687c6/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.1.4f1.exe'
$checksum64     = 'b8025c6b6a97653c2271d9c67041b7e432bd58dbd7796f0a578f7c0aea88c019'

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

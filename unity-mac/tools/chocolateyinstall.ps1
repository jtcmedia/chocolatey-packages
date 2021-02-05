$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8ff31bc5bf5b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.2.3f1.exe'
$checksum64     = '453718b0a6a56b276230549f14d40f349ced8cf159819f98c8bb9406f2de3628'

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

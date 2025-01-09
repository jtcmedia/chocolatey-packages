$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/433b0a79340b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.33f1.exe'
$checksum64     = '8502cd79e9395776900107770dbd22982e9201e0717c71ba6ad307312cfd1aeb'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5e2b1e92c7f8/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.2.2f1.exe'
$checksum64     = 'cbdec43690d6b4f75f6c1764de040b86a3eb2ace11a8ffaeacd7bc2269a15a4d'

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

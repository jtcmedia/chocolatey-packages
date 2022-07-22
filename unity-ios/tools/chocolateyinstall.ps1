$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8c66806a0c04/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.37f1.exe'
$checksum64     = '575b36afd10a6a4188d23b33ba288f36e4a45807c440d791e77686f161d79066'

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

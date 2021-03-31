$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6fdc41dfa55a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.1f1.exe'
$checksum64     = '72e1ceff26d5dce5a81ede3c1659b136eafd7e5173bdfd66de03355055e3ae5e'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e5d502d80fbb/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.2f1.exe'
$checksum64     = '2b4e2319bd3c906cf9f62098215d5c159e5bb585f5e22365e786b62b07fd68e6'

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

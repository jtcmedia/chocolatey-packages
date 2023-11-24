$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/eff2de9070d8/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.14f1.exe'
$checksum64     = '78f4267cc9a834d94fe0ee63cd72b5b9fc56ca28f5286ff730d404183f7fb69a'

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

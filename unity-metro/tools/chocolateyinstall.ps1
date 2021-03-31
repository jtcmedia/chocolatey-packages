$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6fdc41dfa55a/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.1.1f1.exe'
$checksum64     = '1ae081a8202922fc776166d1a68169decdc3b40c5d673088b0130aa2d8247cfd'

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

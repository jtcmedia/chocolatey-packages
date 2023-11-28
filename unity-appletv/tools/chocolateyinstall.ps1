$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a6dd9a634651/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.1f1.exe'
$checksum64     = '26a59d463de713c02b7ba26044291cbdd44d9d85af40d420ab78564e518d8eca'

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

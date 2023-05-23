$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c5d806317f84/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.20f1.exe'
$checksum64     = 'e68b8ab0b217f36386ec4baccbc89ee7243178ce83834f6d27d14d8428d690ef'

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

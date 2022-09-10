$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7321c9670bc2/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.16f1.exe'
$checksum64     = 'a8db2d8e6b7f80161d6fbbb45b0d7b82301500d6029292d46037785af3df843b'

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

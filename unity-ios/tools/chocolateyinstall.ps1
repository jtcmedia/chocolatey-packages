$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/61c2feb0970d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.20f1.exe'
$checksum64     = 'dbf177275b8d023aa742c23de0e25e34bec65cc7eb70b3890acf2eb426af37c5'

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

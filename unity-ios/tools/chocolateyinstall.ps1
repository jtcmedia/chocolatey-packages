$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d2c21f0ef2f1/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.16f1.exe'
$checksum64     = 'b4bd742b56fbb06affaf7bdd3d298af626ea1a0dc17fed10a3e5c93546d34bb0'

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

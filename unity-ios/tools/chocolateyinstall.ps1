$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c36be92430b9/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.2f1.exe'
$checksum64     = '9dd976e2918b7f783b40f0c3ef1d7cef4f2d41efce49da3b4fb063d435c2477c'

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

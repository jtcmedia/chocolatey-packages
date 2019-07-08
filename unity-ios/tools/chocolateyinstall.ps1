$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d5f1b37da199/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.1.9f1.exe'
$checksum64     = '1d41272646eedfc4f77527f1ae23ed5bcc35dff45db4f1c57d7816c88da1b72b'

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

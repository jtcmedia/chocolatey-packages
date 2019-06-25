$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7938dd008a75/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.1.8f1.exe'
$checksum64     = '3f2150a79778ac5b6aa798ce9abffc6e20e6ec47fbcc7a2aeec97a090a3a07b8'

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

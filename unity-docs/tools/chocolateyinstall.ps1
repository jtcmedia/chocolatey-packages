$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ec6cd8118806/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '7bc748a2d77b8ee9e6afad0dbf6bfd3cb1fcaad6d2a438af01d223c02716d652'

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

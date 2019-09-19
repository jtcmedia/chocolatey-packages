$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fe82a0e88406/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.2.6f1.exe'
$checksum64     = 'a1f650d71b4446f0590b00380466b7d4f2c3acb3659c8a22701e8222a2d00b00'

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

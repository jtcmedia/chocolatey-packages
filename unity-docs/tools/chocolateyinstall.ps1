$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fbf46ad88f3d/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = 'ae1a5d0f331d8e64ea8baf5acf0033ab53e99a9b527b4ecb880fcd4701b2720a'

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

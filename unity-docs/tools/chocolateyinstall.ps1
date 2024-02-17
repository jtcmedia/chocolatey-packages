$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/316c1fd686f6/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '19b1d5e39d1ea5e37dbbacdb0d366e1104c4b90d3da7859a8b6cfb7d204736d9'

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

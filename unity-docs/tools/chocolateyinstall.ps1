$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2ad1ed33fd3b/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = 'f56905b2e4e4e7ea8861dc6ff85cfb948cb0dac2d7a6e302850ecaaf314dcf09'

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

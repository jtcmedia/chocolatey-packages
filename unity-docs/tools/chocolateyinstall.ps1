$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cc51a95c0300/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '629000c07bcf0190254f7a8e5e1bbcc0e7e78721ca52b3cae3c9e4bd8b25d8db'

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

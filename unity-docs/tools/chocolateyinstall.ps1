$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d64b1a599cad/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '3c99bc360ea91ddf7b6bb70b62ebdc490d4bbb2fc8d8b1f822e58784749f80ec'

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

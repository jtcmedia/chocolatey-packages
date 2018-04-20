$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/9231f953d9d3/WindowsDocumentationInstaller/UnityDocumentationSetup-2017.4.1f1.exe'
$checksum64     = 'a1cea5dd9525309ba5c5018dd8b79d041a064add6c43879e5188bb6c7aa03386'

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

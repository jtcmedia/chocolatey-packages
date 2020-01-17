$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bbf64de26e34/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.2.18f1.exe'
$checksum64     = 'ad7f7f84b7acc7f3d614b8de4ce5e3e7a690d5dd5f0ee64933581a6cf12b998b'

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

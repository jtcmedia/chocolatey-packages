$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f99f05b3e950/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '79e7c44f9119c13a78ec7e7fae5ff743515b2a8b77aaa62a751b5f19386e9639'

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

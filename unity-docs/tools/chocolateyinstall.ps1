$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ee5a2aa03ab2/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = 'd14ed83965e7193cf8aeb85dbb4c75f7c8f7101030065e99ca9c2b6f21a4750d'

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

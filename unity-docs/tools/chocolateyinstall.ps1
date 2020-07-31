$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a7aea80e3716/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '10e4c11c0b216cbb2fe58e1f9fe40d641d155bd95c18cb11f2efc7f7a9a07b10'

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

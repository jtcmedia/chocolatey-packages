$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ff5b465c8d13/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.2.8f1.exe'
$checksum64     = '72e81a30bc32978174e275ee655b828e35fe4c701750e14f7dffef25ef96a011'

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

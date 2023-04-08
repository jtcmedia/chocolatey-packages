$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5ef4f5b5e2d4/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '92cdb6e0d8609a2ebd10108d65f6d436f1c1b1b9a05e08fdb762d84de6b39121'

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

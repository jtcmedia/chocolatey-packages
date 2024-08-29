$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c3ae09b9f03c/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '243090dc23e3b4475bf6667c4a9b6b54dfdb0b5cf03b375984c7ee29fc6416ba'

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

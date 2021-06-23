$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/afcadd793de6/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '0ca5fa3e7c04be77507b6a3ed0bf0f4bfcd24aa4aaba502da370a81c582ac6fa'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f2970305fe1c/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.1.6f1.exe'
$checksum64     = '47df3789dc3d153a6ed4cce4e69676b22bdc25c5da7a0275f4c4c6d8f6643266'

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

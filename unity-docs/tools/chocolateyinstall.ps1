$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/88d00a7498cd/WindowsDocumentationInstaller/UnityDocumentationSetup-5.5.1f1.exe'
$checksum       = '0a41fabe56940cacd1195ddd9d6a9d8ccac19adc37e3dd4325180be25ed23d7d'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/95c298372b1e/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = 'f0c84a8296aec2a9f3de521ed059953b2ad2c32368e9ca68f4ae1a1fb69c5e9c'

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

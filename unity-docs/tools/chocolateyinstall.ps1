$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ab88ac34d80c/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '9aeb3a1fdd7254abb6c0fb9979ec1374b7a910bd53e2c0f4c8b5002416b9fe93'

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

$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/929ab4d01772/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.2.19f1.exe'
$checksum64     = '70e2ba7c95e260a58a41baa5745ac56a57f592ed2f820932f5e90e9c0b6bd25b'

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

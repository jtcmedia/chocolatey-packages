$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/c18cef34cbcd/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.2.2f1.exe'
$checksum64     = 'db158c50d483013c5e908dc2cbcee17588c92bc6227d27ded5df75bff4588e6d'

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

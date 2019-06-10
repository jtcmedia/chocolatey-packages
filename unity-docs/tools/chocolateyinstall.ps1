$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0ca0f5646614/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.1.5f1.exe'
$checksum64     = 'ac4e95911b31c3c13068a174ff0cf98b08bed86be789922b6cba14b4b1f99fbf'

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

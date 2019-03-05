$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9e14d22a41bb/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.3.7f1.exe'
$checksum64     = '1894e52173cb16dd4a8433ca41abb0c10d207841008df39422bb54b32bd4e8a5'

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

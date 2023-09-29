$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/831263a4172c/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = 'a9b5f3fe821b5453e12ee1fd58ce57bb5ab6d0e1899ea94d59f08fe6f7e83c55'

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

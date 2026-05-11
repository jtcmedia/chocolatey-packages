$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://cloudmedia-docs.unity3d.com/docscloudstorage/6000.3/UnityDocumentation.zip'
$checksum64     = 'cede3588f2230052bda696c462b985e56e88c85836e342c0f72521eaa6c3d264'

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

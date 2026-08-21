$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://cloudmedia-docs.unity3d.com/docscloudstorage/6000.6/UnityDocumentation.zip'
$checksum64     = 'dee49663648824b6909e8cba65785c0edc74e49aa16cd520d1969dbb1d25a4b5'

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

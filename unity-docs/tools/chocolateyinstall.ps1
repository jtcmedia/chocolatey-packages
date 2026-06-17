$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://cloudmedia-docs.unity3d.com/docscloudstorage/6000.3/UnityDocumentation.zip'
$checksum64     = '5950780e951f0bced56b4794e922f4d5b42dad981a1bbc211f0e4582097ada27'

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

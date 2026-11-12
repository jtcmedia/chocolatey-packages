$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://cloudmedia-docs.unity3d.com/docscloudstorage/6000.6/UnityDocumentation.zip'
$checksum64     = '5fa4778bd7a4ca973bfa03db4682b204bc5cc4da0b48c9ff43932189b682127b'

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

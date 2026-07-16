$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://cloudmedia-docs.unity3d.com/docscloudstorage/6000.6/UnityDocumentation.zip'
$checksum64     = 'b5f34f62544e1f6a72b4f1a0a3a24d80467f0dea19eb3edef4c4d09f0067a587'

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

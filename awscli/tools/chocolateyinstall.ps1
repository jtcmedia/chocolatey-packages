$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.246.msi'
$checksum   = '61044d52dd29b5586370a7fe19ca0ee6b7c2c12c61ba092a50351c3bb3ddf61b'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.246.msi'
$checksum64 = '3911e138a9a270366b4e93236f0559a2a29ef1645e5d047edd675cf6a6fc71d0'
 
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'AWS Command Line Interface*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

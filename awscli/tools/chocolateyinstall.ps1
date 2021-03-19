$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.32.msi'
$checksum   = 'bbee394cebcf0a31647b7cb4bcd47ea9d1fc91491c9d71516b44c3d6f034c1d3'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.32.msi'
$checksum64 = '00f35c272793aa63b99cc77b3296f5a7c2aabd8a7599b5543f83e820cf14c957'
 
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

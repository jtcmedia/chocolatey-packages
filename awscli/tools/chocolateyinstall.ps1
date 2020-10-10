$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.157.msi'
$checksum   = 'ae5bb040a95a5ba7740ef51c03984ca2f834779fd78188ea3f721bcb925ca9c6'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.157.msi'
$checksum64 = '9e2838b86316075bd51024bad2bfc7e6f17844ca35fcd15b7c1a8151d1ee9dc5'
 
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

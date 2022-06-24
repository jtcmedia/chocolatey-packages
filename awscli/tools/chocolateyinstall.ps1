$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.16.msi'
$checksum   = '35ce0ef61e7b276d47e525c4f747c5bfdf97c692a857ba0b88762a83ea830a69'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.16.msi'
$checksum64 = '501acfd50f803423d48dd40129968d7ef8d3fbd98bdf1de326cfa3bff329fc57'
 
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

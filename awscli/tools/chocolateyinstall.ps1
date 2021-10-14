$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.61.msi'
$checksum   = '7637d88ad1372f78a4c7bc1929b5739d77f3a2e8d52bb9fdbbb4f0654e55c210'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.61.msi'
$checksum64 = '151ab21d29aa21e908ca4fe2a02b9374a6aed31d46920ab000e2f95af50f7c58'
 
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

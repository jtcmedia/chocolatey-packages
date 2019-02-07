$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.99.msi'
$checksum   = '7d622e7a63e40304989e7b47d84e5d07ab05da7df2e9930e087cca0b048153ca'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.99.msi'
$checksum64 = 'f98d9020122b9818c43a5dc3c5aaee2dbda6023864d12a01a553167a66418c64'
 
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
